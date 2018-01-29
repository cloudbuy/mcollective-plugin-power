module MCollective
  module Agent
    class Power<RPC::Agent

      def shutdown_command
        if MCollective::Util.windows?
          if File.exists?("#{ENV['SYSTEMROOT']}\\sysnative\\shutdown.exe")
            "#{ENV['SYSTEMROOT']}\\sysnative\\shutdown.exe"
          elsif File.exists?("#{ENV['SYSTEMROOT']}\\system32\\shutdown.exe")
            "#{ENV['SYSTEMROOT']}\\system32\\shutdown.exe"
          else
            'shutdown.exe'
          end
        else
          '/sbin/shutdown'
        end
      end

      action "shutdown" do
        out = ""
        if MCollective::Util.windows?
          run([shutdown_command, '/s', '/f'], :stdout => out, :chomp => true)
        else
          run("/sbin/shutdown -h now", :stdout => out, :chomp => true )
        end
        reply[:output] = "Shutdown initiated"
      end

      action "reboot" do
        out = ""
        if MCollective::Util.windows?
          run([shutdown_command, '/r', '/f'], :stdout => out, :chomp => true)
        else
          run("/sbin/shutdown -r now", :stdout => out, :chomp => true )
        end
        reply[:output] = "Reboot initiated"
      end

    end
  end
end

# vi:tabstop=2:softtabstop=2:shiftwidth=2:expandtab:ai:filetype=ruby
