#!/usr/bin/env xcrun swift

import Foundation
let df = NSDateFormatter()
df.dateStyle = .MediumStyle
df.timeStyle = .ShortStyle
print(df.stringFromDate(NSDate()))
