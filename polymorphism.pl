#polymorphism, objects of different classes can be manipulated in the same way as long as they provide a similar external interface 

use Modern::Perl 2011;

package humans
{
	use Moose;
	has 'name', is => 'ro', isa => 'Str';
	has 'age', is => 'ro', isa => 'Int';
	has 'food', is => 'ro', isa => 'Str';
	has 'work', is => 'ro', isa => 'Str';
}

package animals
{
	use Moose;
	has 'name', is => 'ro', isa => 'Str';
	has 'age', is => 'ro', isa => 'Int';
	has 'food', is => 'ro', isa => 'Str';
	has 'type', is => 'ro', isa => 'Str';
}



sub show_stats
{
	my $object = shift;
	
	say 'my name is ', $object->name();
	say 'I am ', $object->age();
	say 'I eat ', $object->food(), "\n";
	
}


my $joe = humans->new(name => 'joe', age => 25, food => 'noodles', work => 'programmer');

show_stats($joe);

my $dog = animals->new(name => 'blacky', age => 5, food => 'bone', type => 'omnivore');

show_stats($dog);