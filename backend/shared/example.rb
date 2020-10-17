module Shared
  class Example
    def self.boot_time(seed = nil)
      @boot_time ||= "#{Time.now} (seed: #{seed})"
    end
  end
end
