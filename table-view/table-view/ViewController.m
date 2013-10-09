//
//  ViewController.m
//  table-view
//
//  Created by Patsicha Tongteeka on 10/9/56 BE.
//  Copyright (c) 2556 Patsicha Tongteeka. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *tableData;
    NSMutableArray *thumbnails;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    tableData = [NSMutableArray arrayWithObjects:@"Afghanistan", @"Albania", @"Algeria", @"American Samoa", @"Andorra", @"Angola", @"Anguilla", @"Antigua and Barbuda", @"Argentina", @"Armenia", @"Aruba", @"Australia", @"Austria", @"Azerbaijan", @"Bahamas", @"Bahrain", @"Bangladesh", @"Barbados", @"Belarus", @"Belgium", @"Belize", @"Benin", @"Bermuda", @"Bhutan", @"Bolivia", @"Bosnia", @"Botswana", @"Brazil", @"British Virgin Islands", @"Brunei", @"Bulgaria", @"Burkina Faso", @"Burundi", @"Cambodia", @"Cameroon", @"Canada", @"Cape Verde", @"Cayman Islands", @"Central African Republic", @"Chad", @"Chile", @"China", @"Christmas Island", @"Colombia", @"Comoros", @"Cook Islands", @"Costa Rica", @"Côte d'Ivoire", @"Croatia", @"Cuba", @"Cyprus", @"Czech Republic", @"Democratic Republic of the Congo", @"Denmark", @"Djibouti", @"Dominica", @"Dominican Republic", @"Ecuador", @"Egypt", @"El Salvador", @"Equatorial Guinea", @"Eritrea", @"Estonia", @"Ethiopia", @"Falkland Islands", @"Faroe Islands", @"Fiji", @"Finland", @"France", @"French Polynesia", @"Gabon", @"Gambia", @"Georgia", @"Germany", @"Ghana", @"Gibraltar", @"Greece", @"Greenland", @"Grenada", @"Guam", @"Guatemala", @"Guinea Bissau", @"Guinea", @"Guyana", @"Haiti", @"Honduras", @"Hong Kong", @"Hungary", @"Iceland", @"India", @"Indonesia", @"Iran", @"Iraq", @"Ireland", @"Israel", @"Italy", @"Jamaica", @"Japan", @"Jordan", @"Kazakhstan", @"Kenya", @"Kiribati", @"Kuwait", @"Kyrgyzstan", @"Laos", @"Latvia", @"Lebanon", @"Lesotho", @"Liberia", @"Libya", @"Liechtenstein", @"Lithuania", @"Luxembourg", @"Macao", @"Macedonia", @"Madagascar", @"Malawi", @"Malaysia", @"Maldives", @"Mali", @"Malta", @"Marshall Islands", @"Martinique", @"Mauritania", @"Mauritius", @"Mexico", @"Micronesia", @"Moldova", @"Monaco", @"Mongolia", @"Montserrat", @"Morocco", @"Mozambique", @"Myanmar", @"Namibia", @"Nauru", @"Nepal", @"Netherlands Antilles", @"Netherlands", @"New Zealand", @"Nicaragua", @"Niger", @"Nigeria", @"Niue", @"Norfolk Island", @"North Korea", @"Norway", @"Oman", @"Pakistan", @"Palau", @"Panama", @"Papua New Guinea", @"Paraguay", @"Peru", @"Philippines", @"Pitcairn Islands", @"Poland", @"Portugal", @"Puerto Rico", @"Qatar", @"Republic of the Congo", @"Romania", @"Russian Federation", @"Rwanda", @"Saint Kitts and Nevis", @"Saint Lucia", @"Saint Pierre", @"Saint Vicent and the Grenadines", @"Samoa", @"San Marino", @"Sao Tomé and Príncipe", @"Saudi Arabia", @"Senegal", @"Serbia and Montenegro", @"Seychelles", @"Sierra Leone", @"Singapore", @"Slovakia", @"Slovenia", @"Soloman Islands", @"Somalia", @"South Africa", @"South Georgia", @"South Korea", @"Soviet Union", @"Spain", @"Sri Lanka", @"Sudan", @"Suriname", @"Swaziland", @"Sweden", @"Switzerland", @"Syria", @"Taiwan", @"Tajikistan", @"Tanzania", @"Thailand", @"Tibet", @"Timor-Leste", @"Togo", @"Tonga", @"Trinidad and Tobago", @"Tunisia", @"Turkey", @"Turkmenistan", @"Turks and Caicos Islands", @"Tuvalu", @"UAE", @"Uganda", @"Ukraine", @"United Kingdom", @"United States of America", @"Uruguay", @"US Virgin Islands", @"Uzbekistan", @"Vanuatu", @"Vatican City", @"Venezuela", @"Vietnam", @"Wallis and Futuna", @"Yemen", @"Zambia", @"Zimbabwe", nil];
    
    /*
    NSString *path = [[NSBundle mainBundle] pathForResource:@"testList" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tableData = [dict objectForKey:@"Name"];
     */
    
    // Initialize thumbnails
    thumbnails = [NSMutableArray arrayWithObjects:@"Afghanistan.png", @"Albania.png", @"Algeria.png", @"American_Samoa.png", @"Andorra.png", @"Angola.png", @"Anguilla.png", @"Antigua_and_Barbuda.png", @"Argentina.png", @"Armenia.png", @"Aruba.png", @"Australia.png", @"Austria.png", @"Azerbaijan.png", @"Bahamas.png", @"Bahrain.png", @"Bangladesh.png", @"Barbados.png", @"Belarus.png", @"Belgium.png", @"Belize.png", @"Benin.png", @"Bermuda.png", @"Bhutan.png", @"Bolivia.png", @"Bosnia.png", @"Botswana.png", @"Brazil.png", @"British_Virgin_Islands.png", @"Brunei.png", @"Bulgaria.png", @"Burkina_Faso.png", @"Burundi.png", @"Cambodia.png", @"Cameroon.png", @"Canada.png", @"Cape_Verde.png", @"Cayman_Islands.png", @"Central_African_Republic.png", @"Chad.png", @"Chile.png", @"China.png", @"Christmas_Island.png", @"Colombia.png", @"Comoros.png", @"Cook_Islands.png", @"Costa_Rica.png", @"Côte_d'Ivoire.png", @"Croatia.png", @"Cuba.png", @"Cyprus.png", @"Czech_Republic.png", @"Democratic_Republic_of_the_Congo.png", @"Denmark.png", @"Djibouti.png", @"Dominica.png", @"Dominican_Republic.png", @"Ecuador.png", @"Egypt.png", @"El_Salvador.png", @"Equatorial_Guinea.png", @"Eritrea.png", @"Estonia.png", @"Ethiopia.png", @"Falkland_Islands.png", @"Faroe_Islands.png", @"Fiji.png", @"Finland.png", @"France.png", @"French_Polynesia.png", @"Gabon.png", @"Gambia.png", @"Georgia.png", @"Germany.png", @"Ghana.png", @"Gibraltar.png", @"Greece.png", @"Greenland.png", @"Grenada.png", @"Guam.png", @"Guatemala.png", @"Guinea_Bissau.png", @"Guinea.png", @"Guyana.png", @"Haiti.png", @"Honduras.png", @"Hong_Kong.png", @"Hungary.png", @"Iceland.png", @"India.png", @"Indonesia.png", @"Iran.png", @"Iraq.png", @"Ireland.png", @"Israel.png", @"Italy.png", @"Jamaica.png", @"Japan.png", @"Jordan.png", @"Kazakhstan.png", @"Kenya.png", @"Kiribati.png", @"Kuwait.png", @"Kyrgyzstan.png", @"Laos.png", @"Latvia.png", @"Lebanon.png", @"Lesotho.png", @"Liberia.png", @"Libya.png", @"Liechtenstein.png", @"Lithuania.png", @"Luxembourg.png", @"Macao.png", @"Macedonia.png", @"Madagascar.png", @"Malawi.png", @"Malaysia.png", @"Maldives.png", @"Mali.png", @"Malta.png", @"Marshall_Islands.png", @"Martinique.png", @"Mauritania.png", @"Mauritius.png", @"Mexico.png", @"Micronesia.png", @"Moldova.png", @"Monaco.png", @"Mongolia.png", @"Montserrat.png", @"Morocco.png", @"Mozambique.png", @"Myanmar.png", @"Namibia.png", @"Nauru.png", @"Nepal.png", @"Netherlands_Antilles.png", @"Netherlands.png", @"New_Zealand.png", @"Nicaragua.png", @"Niger.png", @"Nigeria.png", @"Niue.png", @"Norfolk_Island.png", @"North_Korea.png", @"Norway.png", @"Oman.png", @"Pakistan.png", @"Palau.png", @"Panama.png", @"Papua_New_Guinea.png", @"Paraguay.png", @"Peru.png", @"Philippines.png", @"Pitcairn_Islands.png", @"Poland.png", @"Portugal.png", @"Puerto_Rico.png", @"Qatar.png", @"Republic_of_the_Congo.png", @"Romania.png", @"Russian_Federation.png", @"Rwanda.png", @"Saint_Kitts_and_Nevis.png", @"Saint_Lucia.png", @"Saint_Pierre.png", @"Saint_Vicent_and_the_Grenadines.png", @"Samoa.png", @"San_Marino.png", @"Sao_Tomé_and_Príncipe.png", @"Saudi_Arabia.png", @"Senegal.png", @"Serbia_and_Montenegro.png", @"Seychelles.png", @"Sierra_Leone.png", @"Singapore.png", @"Slovakia.png", @"Slovenia.png", @"Soloman_Islands.png", @"Somalia.png", @"South_Africa.png", @"South_Georgia.png", @"South_Korea.png", @"Soviet_Union.png", @"Spain.png", @"Sri_Lanka.png", @"Sudan.png", @"Suriname.png", @"Swaziland.png", @"Sweden.png", @"Switzerland.png", @"Syria.png", @"Taiwan.png", @"Tajikistan.png", @"Tanzania.png", @"Thailand.png", @"Tibet.png", @"Timor-Leste.png", @"Togo.png", @"Tonga.png", @"Trinidad_and_Tobago.png", @"Tunisia.png", @"Turkey.png", @"Turkmenistan.png", @"Turks_and_Caicos_Islands.png", @"Tuvalu.png", @"UAE.png", @"Uganda.png", @"Ukraine.png", @"United_Kingdom.png", @"United_States_of_America.png", @"Uruguay.png", @"US_Virgin_Islands.png", @"Uzbekistan.png", @"Vanuatu.png", @"Vatican_City.png", @"Venezuela.png", @"Vietnam.png", @"Wallis_and_Futuna.png", @"Yemen.png", @"Zambia.png", @"Zimbabwe.png", nil];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    /*
     UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(cell.accessoryType == UITableViewCellAccessoryCheckmark ? @"Yes" : @"No");
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }else{
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
     
     */
    
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Remove the row from data model
    [tableData removeObjectAtIndex:indexPath.row];
        // Request table view to reload
    [tableView reloadData];
}

@end
