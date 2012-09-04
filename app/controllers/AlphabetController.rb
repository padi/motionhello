# Chapter 5 - Tables
class AlphabetController < UIViewController
  def viewDidLoad
    super

    self.title = "Alphabet"
    @data = ("A".."Z").to_a

    # self.view.bounds also returns a CGRect, just like view.frame but with an empty origin point (without position)
    # UITableView.alloc sizes itself to fill self.view
    @table = UITableView.alloc.initWithFrame self.view.bounds
    self.view.addSubview @table

    @table.dataSource = self
  end

  # params
  # tableView param - an instance of UITableView?
  # indexPath - an instance of NSIndexPath with a `section` and `row` property
  def tableView tableView, cellForRowAtIndexPath: indexPath
    @reuseIdentifier ||= "CELL_IDENTIFIER"

    # get a reusable cell or create a new one
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end

    # put your data in the cell
    cell.textLabel.text = @data[indexPath.row]

    # return the UITableViewCell for the row
    cell
  end

  def tableView tableView, numberOfRowsInSection: section
    # return the number of rows
    @data.count
  end
end
