class AndroidJidoka::Proxy::Console
  def shell(message)
    `adb shell #{message}`
  end

  def pull(path)
    `adb pull #{path}`
  end
end