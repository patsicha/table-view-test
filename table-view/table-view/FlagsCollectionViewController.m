//
//  FlagsCollectionViewController.m
//  table-view
//
//  Created by Patsicha Tongteeka on 10/9/56 BE.
//  Copyright (c) 2556 Patsicha Tongteeka. All rights reserved.
//

#import "FlagsCollectionViewController.h"
#import "FlagsViewController.h"

@interface FlagsCollectionViewController ()

@end

@implementation FlagsCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.collectionView.allowsMultipleSelection = YES;
    flagsPhotos = [NSArray arrayWithObjects:@"Afghanistan.png", @"Albania.png", @"Algeria.png", @"American_Samoa.png", @"Andorra.png", @"Angola.png", @"Anguilla.png", @"Antigua_and_Barbuda.png", @"Argentina.png", @"Armenia.png", @"Aruba.png", @"Australia.png", @"Austria.png", @"Azerbaijan.png", @"Bahamas.png", @"Bahrain.png", @"Bangladesh.png", @"Barbados.png", @"Belarus.png", @"Belgium.png", @"Belize.png", @"Benin.png", @"Bermuda.png", @"Bhutan.png", @"Bolivia.png", @"Bosnia.png", @"Botswana.png", @"Brazil.png", @"British_Virgin_Islands.png", @"Brunei.png", @"Bulgaria.png", @"Burkina_Faso.png", @"Burundi.png", @"Cambodia.png", @"Cameroon.png", @"Canada.png", @"Cape_Verde.png", @"Cayman_Islands.png", @"Central_African_Republic.png", @"Chad.png", @"Chile.png", @"China.png", @"Christmas_Island.png", @"Colombia.png", @"Comoros.png", @"Cook_Islands.png", @"Costa_Rica.png", @"Côte_d'Ivoire.png", @"Croatia.png", @"Cuba.png", @"Cyprus.png", @"Czech_Republic.png", @"Democratic_Republic_of_the_Congo.png", @"Denmark.png", @"Djibouti.png", @"Dominica.png", @"Dominican_Republic.png", @"Ecuador.png", @"Egypt.png", @"El_Salvador.png", @"Equatorial_Guinea.png", @"Eritrea.png", @"Estonia.png", @"Ethiopia.png", @"Falkland_Islands.png", @"Faroe_Islands.png", @"Fiji.png", @"Finland.png", @"France.png", @"French_Polynesia.png", @"Gabon.png", @"Gambia.png", @"Georgia.png", @"Germany.png", @"Ghana.png", @"Gibraltar.png", @"Greece.png", @"Greenland.png", @"Grenada.png", @"Guam.png", @"Guatemala.png", @"Guinea_Bissau.png", @"Guinea.png", @"Guyana.png", @"Haiti.png", @"Honduras.png", @"Hong_Kong.png", @"Hungary.png", @"Iceland.png", @"India.png", @"Indonesia.png", @"Iran.png", @"Iraq.png", @"Ireland.png", @"Israel.png", @"Italy.png", @"Jamaica.png", @"Japan.png", @"Jordan.png", @"Kazakhstan.png", @"Kenya.png", @"Kiribati.png", @"Kuwait.png", @"Kyrgyzstan.png", @"Laos.png", @"Latvia.png", @"Lebanon.png", @"Lesotho.png", @"Liberia.png", @"Libya.png", @"Liechtenstein.png", @"Lithuania.png", @"Luxembourg.png", @"Macao.png", @"Macedonia.png", @"Madagascar.png", @"Malawi.png", @"Malaysia.png", @"Maldives.png", @"Mali.png", @"Malta.png", @"Marshall_Islands.png", @"Martinique.png", @"Mauritania.png", @"Mauritius.png", @"Mexico.png", @"Micronesia.png", @"Moldova.png", @"Monaco.png", @"Mongolia.png", @"Montserrat.png", @"Morocco.png", @"Mozambique.png", @"Myanmar.png", @"Namibia.png", @"Nauru.png", @"Nepal.png", @"Netherlands_Antilles.png", @"Netherlands.png", @"New_Zealand.png", @"Nicaragua.png", @"Niger.png", @"Nigeria.png", @"Niue.png", @"Norfolk_Island.png", @"North_Korea.png", @"Norway.png", @"Oman.png", @"Pakistan.png", @"Palau.png", @"Panama.png", @"Papua_New_Guinea.png", @"Paraguay.png", @"Peru.png", @"Philippines.png", @"Pitcairn_Islands.png", @"Poland.png", @"Portugal.png", @"Puerto_Rico.png", @"Qatar.png", @"Republic_of_the_Congo.png", @"Romania.png", @"Russian_Federation.png", @"Rwanda.png", @"Saint_Kitts_and_Nevis.png", @"Saint_Lucia.png", @"Saint_Pierre.png", @"Saint_Vicent_and_the_Grenadines.png", @"Samoa.png", @"San_Marino.png", @"Sao_Tomé_and_Príncipe.png", @"Saudi_Arabia.png", @"Senegal.png", @"Serbia_and_Montenegro.png", @"Seychelles.png", @"Sierra_Leone.png", @"Singapore.png", @"Slovakia.png", @"Slovenia.png", @"Soloman_Islands.png", @"Somalia.png", @"South_Africa.png", @"South_Georgia.png", @"South_Korea.png", @"Soviet_Union.png", @"Spain.png", @"Sri_Lanka.png", @"Sudan.png", @"Suriname.png", @"Swaziland.png", @"Sweden.png", @"Switzerland.png", @"Syria.png", @"Taiwan.png", @"Tajikistan.png", @"Tanzania.png", @"Thailand.png", @"Tibet.png", @"Timor-Leste.png", @"Togo.png", @"Tonga.png", @"Trinidad_and_Tobago.png", @"Tunisia.png", @"Turkey.png", @"Turkmenistan.png", @"Turks_and_Caicos_Islands.png", @"Tuvalu.png", @"UAE.png", @"Uganda.png", @"Ukraine.png", @"United_Kingdom.png", @"United_States_of_America.png", @"Uruguay.png", @"US_Virgin_Islands.png", @"Uzbekistan.png", @"Vanuatu.png", @"Vatican_City.png", @"Venezuela.png", @"Vietnam.png", @"Wallis_and_Futuna.png", @"Yemen.png", @"Zambia.png", @"Zimbabwe.png", nil];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"testList" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tableData = [dict objectForKey:@"Name"];

    selectedFlagsArray = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return flagsPhotos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *flagsImageView = (UIImageView *)[cell viewWithTag:100];
    flagsImageView.image = [UIImage imageNamed:[flagsPhotos objectAtIndex:indexPath.row]];
    
    UILabel *flagsLabel = (UILabel *)[cell viewWithTag:101];
    flagsLabel.text = [tableData objectAtIndex:indexPath.row];
    
    
    UIView *backgroundView = [[UIView alloc]initWithFrame:cell.bounds];
    backgroundView.layer.borderColor = [[UIColor colorWithRed:0.529 green:0.808 blue:0.922 alpha:1]CGColor];
    backgroundView.layer.borderWidth = 10.0f;
    cell.selectedBackgroundView = backgroundView;
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (shareEnabled) {
        // Determine the selected items by using the indexPath
        NSString *selectedFlags = [flagsPhotos objectAtIndex:indexPath.row];
        // Add the selected item into the array
        [selectedFlagsArray addObject:selectedFlags];
        NSLog(@"%@",selectedFlagsArray);
    }
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (shareEnabled) {
        NSString *deSelectedFlags = [flagsPhotos objectAtIndex:indexPath.row];
        [selectedFlagsArray removeObject:deSelectedFlags];
        NSLog(@"%@",selectedFlagsArray);
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ss"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        FlagsViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.flagImageName = [flagsPhotos objectAtIndex:indexPath.row];
        destViewController.flagName = [tableData objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}

- (IBAction)shareButtonTouched:(id)sender {
    if (shareEnabled) {
        
        // Post selected photos to Facebook
        if ([selectedFlagsArray count] > 0) {
            if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
                SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
                
                [controller setInitialText:@"Check out my Flagss!"];
                for (NSString *recipePhoto in selectedFlagsArray) {
                    [controller addImage:[UIImage imageNamed:recipePhoto]];
                }
                
                [self presentViewController:controller animated:YES completion:Nil];
            }
        }
        
        // Deselect all selected items
        for(NSIndexPath *indexPath in self.collectionView.indexPathsForSelectedItems) {
            [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        }
        
        // Remove all items from selectedRecipes array
        [selectedFlagsArray removeAllObjects];
        
        // Change the sharing mode to NO
        shareEnabled = NO;
        self.collectionView.allowsMultipleSelection = NO;
        self.shareButton.title = @"Share";
        [self.shareButton setStyle:UIBarButtonItemStylePlain];
        
    } else {
        
        // Change shareEnabled to YES and change the button text to DONE
        shareEnabled = YES;
        self.collectionView.allowsMultipleSelection = YES;
        self.shareButton.title = @"Upload";
        [self.shareButton setStyle:UIBarButtonItemStyleDone];
        
    }
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (shareEnabled) {
        return NO;
    } else {
        return YES;
    }
}
@end
