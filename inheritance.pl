#inheritance using lighsource example, altered

use Modern::Perl 2011;

package LightSource
{
	use Moose;

	has 'candle_power', is => 'ro',
		    isa => 'Int',
		    default => 1;

	has 'enabled', is => 'ro',
		isa => 'Bool',
		default => 0,
		writer => '_set_enabled';
		

sub light
{
	my $self =  shift;
	$self->_set_enabled(1);	

}

sub extinguish
{
	my $self = shift;
	$self->_set_enabled(0);
}

}


	my $candle = LightSource->new(candle_power => 2);

	$candle->light;

	say 'candle is ' , $candle->enabled();

	$candle->extinguish;

	say 'candle is ' , $candle->enabled();

	say 'candle has power of ' , $candle->candle_power, ' candles';



#lightbulb inherits from light-source

package lightbulb
{
	use Moose;
	extends 'LightSource';

	#attribute override
	has '+candle_power', default => 100;
}

my $bulb = lightbulb->new();

$bulb->light();

say 'bulb has power of ', $bulb->candle_power(), ' candles';