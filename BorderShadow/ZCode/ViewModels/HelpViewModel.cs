
using System.Collections.ObjectModel;

namespace BorderShadow
{
    public class HelpViewModel :BindableObject
    {
        ObservableCollection<PropertyItem> PropertyItem;
        public ObservableCollection<PropertyItem> MyPropertyItems
        {
            get { return PropertyItem; }
            set
            {
                PropertyItem = value;
                OnPropertyChanged();
            }
        }

        public HelpViewModel()
        {
            PropertyItem = new ObservableCollection<PropertyItem>
            {
                new PropertyItem(){Question = "Question 1", MyPropertyItems = new List<PropertyItemDetails>{new PropertyItemDetails { Answer = "Answer 1, more than one line must be used in example to show, that the expander works as expected" } } },
                new PropertyItem(){Question = "Question 2", MyPropertyItems = new List<PropertyItemDetails>{new PropertyItemDetails { Answer = "Answer 2, more than one line must be used in example to show, that the expander works as expected" } } },
                new PropertyItem(){Question = "Question 3", MyPropertyItems = new List<PropertyItemDetails>{new PropertyItemDetails { Answer = "Answer 3, more than one line must be used in example to show, that the expander works as expected" } } },
                //new PropertyItem(){Question = "Question 4", MyPropertyItems = new List<PropertyItemDetails>{new PropertyItemDetails { Answer = "Answer 4, more than one line must be used in example to show, that the expander works as expected" } } },
            };
        }
    }
}
