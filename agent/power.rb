module MCollective
  module Agent
    class Power<RPC::Agent

      action "shutdown" do
	out = ""
	run("/sbin/shutdown -h now", :stdout => out, :chomp => true )
	reply[:output] = "Shutdown initiated"
      end

      action "reboot" do
	out = ""
	run("/sbin/shutdown -r now", :stdout => out, :chomp => true )
	reply[:output] = "Reboot initiated"
      end

    end
  end
end

# vi:tabstop=2:expandtab:ai:filetype=ruby
