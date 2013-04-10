metadata    :name        => "power",
            :description => "An agent that can shutdown or reboot them system",
            :author      => "A.Broekhof",
            :license     => "Apache 2",
            :version     => "2.1",
            :url         => "http://github.com/arnobroekhof/mcollective-plugins/wiki",
            :timeout     => 5

action "reboot", :description => "Reboots the system" do
    display :always

    output :output,
           :description => "Reboot the system",
           :display_as => "Power"
end

action "shutdown", :description => "Shutdown the system" do
    display :always

    output :output,
           :description => "Shutdown the system",
           :display_as  => "Power"
end
