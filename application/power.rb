class MCollective::Application::Power<MCollective::Application
  description "Linux Power broker"
  usage "power [reboot|shutdown]"

  def post_option_parser(configuration)
    if ARGV.size == 1
      configuration[:command] = ARGV.shift
    end
  end

  def validate_configuration(configuration)
    raise "Command should be one of reboot or shutdown" unless configuration[:command] =~ /^shutdown|reboot$/

  end

  def main
    mc = rpcclient("power")

    mc.discover :verbose => true
    mc.send(configuration[:command]).each do |node|
      case configuration[:command]
      when "reboot"
        printf("%-40s %s\n", node[:sender], node[:data][:output])
      when "shutdown"
        printf("%-40s %s\n", node[:sender], node[:data][:output])
      end 
    end
    
    printrpcstats

    mc.disconnect

  end

end

# vi:tabstop=2:expandtab:ai
