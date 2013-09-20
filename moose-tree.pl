#OOP using moose

use Modern::Perl 2011;

package tree
{
	use Moose;
	
	#attibute declaration
	has 'name', is => 'ro', isa => 'Str';
	has 'age', is => 'ro', isa => 'Int';
	
	
	#class methods
sub consume
{
	#consume water, minerals	
	
}

sub generate
{
	#generate oxygen
	
}
		
}

#object creation

my $mango_tree = tree->new(name=>'mango', age => 10);

#accessing methods

$mango_tree->consume();
$mango_tree->generate();


say 'I am a ', $mango_tree->name, 'tree and I am ', $mango_tree->age ,' years old';