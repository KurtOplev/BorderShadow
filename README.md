At first, I complained that Shadow didn't work on Frame.

Then I wrote that Shadow actually works on Frame if HasShadow was set to True.

But I wasn't aware that this had, to put it mildly, an unfortunate effect on the Expander wrapped in the Frame.

I have now tried setting Shadow on both Frame, Border, StackLayout and Expander.

The examples show:

Frame with Shadow

	Shadow works

	CornerRadius works

	Expander is destroyed


Frame without Shadow, but with BorderColor

	BorderColor instead of Shadow – can be accepted

	CornerRadius works

	Expander works


Border with Shadow

	Shadow does NOT work,

	Does NOT have BorderColor, but is not needed either, as Border automatically has BorderColor

	Does NOT have CornerRadius

	Expander is destroyed


Border without Shadow

	Does NOT have BorderColor, but is not needed either, as Border automatically has BorderColor

	Does NOT have CornerRadius

	Expander works


StackLayout with Shadow

	Shadow does NOT work

	Does NOT have BorderColor

	Does NOT have CornerRadius

	Expander is destroyed


StackLayout without Shadow

	Does NOT have BorderColor

	Does NOT have CornerRadius

	Expander works


Expander with Shadow

	Shadow does NOT work

	Does NOT have BorderColor

	Does NOT have CornerRadius

	Expander works

	Wrong appearance – could work, but is not, as desired, gathered in one box


Try opening and closing the Expander elements in the different examples.

Then you will see that the texts overlap each other.

The solution of Frame with BorderColor instead of Shadow is the only acceptable solution.

The solution with Border cannot be accepted despite the fact that there is an automatic BorderColor, as the CornerRadius does not exist on the Border.

So, when Frame is deprecated, I do NOT have an acceptable solution.

The optimal solution is:

	that Shadow on Border will work

	that it will be possible to set CornerRadius to Border 

	as well as of course making sure that Shadow does NOT destroy Expander's functionality.

Or that there is a completely different control that can give the desired results.
 
