namespace BorderShadow;

public partial class TestPage : ContentPage
{
	public TestPage()
	{
		InitializeComponent();

        BindingContext = new HelpViewModel();
    }
}