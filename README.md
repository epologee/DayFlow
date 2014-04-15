# DayFlow

iOS Date Picker + Infinite Scrolling.

## Play

Look at the [example app](Example) after running `pod install` from your terminal. Check out the [Sample Video](http://vimeo.com/evadne/dayflow-debut). Have fun. Make it faster. Fork and send pull requests. Figure out hooks for customization.

## Use

Plop `DFLDatePickerViewController` in, and implement the one method in `<DFLDatePickerViewControllerDelegate>`:

	- (void)datePickerViewController:(DFLDatePickerViewController *)controller didSelectDate:(NSDate *)date;

That pretty much sums up what it does.

## Licensing

This project is in the public domain.  You can embed it in works for hire or use it for evil.  Attribution by linking to the [project page](https://github.com/evadne/DayFlow) and chocolate delivery is appreciated.

## Credits

*	[Evadne Wu](http://radi.ws)
