#roles - classfying classes based on what it does
use Modern::Perl 2011;

package humans
{
	use Moose;
	has 'name', is => 'ro', isa => 'Str';
	has 'age', is => 'ro', isa => 'Int';
	has 'food', is => 'ro', isa => 'Str';
	has 'work', is => 'ro', isa => 'Str';
	
	with 'humanbeing';
	
}

package employees
{
	use Moose;
	has 'name', is => 'ro', isa => 'Str';
	has 'emp_id', is => 'ro', isa => 'Int';
	has 'age', is => 'ro', isa => 'Int';
	has 'work', is => 'ro', isa => 'Str';
	
	with 'humanbeing';

}

package animals
{
	use Moose;
	has 'name', is => 'ro', isa => 'Str';
	has 'age', is => 'ro', isa => 'Int';
	has 'food', is => 'ro', isa => 'Str';
	has 'type', is => 'ro', isa => 'Str';
	
}


package humanbeing
{
	use Moose::Role;
	requires qw(name age work);
	
}

my $joe = humans->new(name => 'joe', age => 25, food => 'noodles', work => 'programmer');

my $dog = animals->new(name => 'blacky', age => 5, food => 'bone', type => 'omnivore');

my $employee1 = employees->new(name => 'john', age => 30, emp_id => 0001, work => 'supervisor');



say 'I am ', $joe->name(), ' and I am human!' if $joe->DOES('humanbeing');

say 'I am ', $dog->name(), ' and I am human!' if $dog->DOES('humanbeing');

say 'I am ', $employee1->name(), ' and I am human!' if $employee1->DOES('humanbeing');