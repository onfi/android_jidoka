require "android_jidoka/version"
require "android_jidoka/proxy"
require "android_jidoka/proxy/console"

class AndroidJidoka
  def initialize(opt = {})
    @opt = {
        devise: {
          tmp: '/sdcard/',
        },
        local: {
          tmp: '.',
        }
      }.merge(opt)
    @proxy = AndroidJidoka::Proxy::Console.new
  end

  def capture
    @proxy.shell "screencap -p #{@opt[:devise][:tmp]}screen.png"
    @proxy.pull "sdcard/screen.png"
    @proxy.shell "rm #{@opt[:devise][:tmp]}screen.png"
  end
end
