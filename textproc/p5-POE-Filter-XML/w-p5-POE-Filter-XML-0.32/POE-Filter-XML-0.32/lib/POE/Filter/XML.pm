package POE::Filter::XML;
use strict;
use warnings;

our $VERSION = '0.32';

use XML::SAX;
use XML::SAX::ParserFactory;
use POE::Filter::XML::Handler;
use Scalar::Util qw/weaken/;
use Carp;
$XML::SAX::ParserPackage = "XML::SAX::Expat::Incremental";

# This is to make Filter::Stackable happy
use base('POE::Filter');

sub clone()
{
	my ($self) = @_;
	
	return POE::Filter::XML->new(
		$self->{'buffer'}, 
		$self->{'callback'},
		$self->{'handler'});
}

sub new() 
{
	
	my ($class, $buffer, $callback, $handler) = @_;
	
	my $self = {};

	if(not defined($buffer))
	{
		$buffer = '';
	}

	if(not defined($callback))
	{
		$callback = sub{ Carp::confess('Parsing error happened!'); };
	}
	
	if(not defined($handler))
	{
		$handler = POE::Filter::XML::Handler->new();
	}
	
	my $parser = XML::SAX::ParserFactory->parser('Handler' => $handler);
	
	$self->{'handler'} = $handler;
	$self->{'parser'} = $parser;
	$self->{'callback'} = $callback;
	
	weaken($self->{'parser'});

	eval
	{
		$self->{'parser'}->parse_string($buffer);
	
	}; 
	
	if ($@)
	{
		warn $@;
		$self->{'callback'}->($@);
	}

	bless($self, $class);
	return $self;
}

sub DESTROY
{
	my $self = shift;
	
	#HACK: stupid circular references in 3rd party modules
	#We need to weaken/break these or the damn parser leaks
	$self->{'parser'}->{'_expat_nb_obj'}->release();
	weaken($self->{'parser'}->{'_expat_nb_obj'});
	weaken($self->{'parser'}->{'_xml_parser_obj'}->{'__XSE'});
	
	delete $self->{'meta'};
	delete $self->{'parser'};
	delete $self->{'handler'};

	#warn '########## DESTROY IN FILTER CALLED ############';
}

sub reset()
{
	my ($self) = @_;

	$self->{'handler'}->reset();

	$self->{'parser'} = XML::SAX::ParserFactory->parser
	(	
		'Handler' => $self->{'handler'}
	);

	delete $self->{'buffer'};
}

sub get_one_start()
{
	my ($self, $raw) = @_;
	if (defined $raw) 
	{
		foreach my $raw_data (@$raw) 
		{
			push
			(
				@{$self->{'buffer'}}, 
				split
				(
					/(?=\015?\012|\012\015?)/s, 
					$raw_data
				)
			);
		}
	}
}

sub get_one()
{
	my ($self) = @_;

	if($self->{'handler'}->finished_nodes())
	{
		return [$self->{'handler'}->get_node()];
	
	} else {
		
		for(0..$#{$self->{'buffer'}})
		{
			my $line = shift(@{$self->{'buffer'}});
			
			next unless($line);

			eval
			{
				$self->{'parser'}->parse_string($line);
			};
			
			if($@)
			{
				warn $@;
				&{ $self->{'callback'} }($@);
			}

			if($self->{'handler'}->finished_nodes())
			{
				my $node = $self->{'handler'}->get_node();
				
				if($node->stream_end())
				{
					$self->reset();
				}
				
				return [$node];
			}
		}
		return [];
	}
}

sub put()
{
	my($self, $nodes) = @_;
	
	my $output = [];

	foreach my $node (@$nodes) 
	{
		if($node->stream_start())
		{
			$self->reset();
		}
		push(@$output, $node->to_str());
	}
	
	return($output);
}

1;

__END__

=pod

=head1 NAME

POE::Filter::XML - A POE Filter for parsing XML

=head1 SYSNOPSIS

 use POE::Filter::XML;
 my $filter = POE::Filter::XML->new();

 my $wheel = POE::Wheel:ReadWrite->new(
 	Filter		=> $filter,
	InputEvent	=> 'input_event',
 );

=head1 DESCRIPTION

POE::Filter::XML provides POE with a completely encapsulated XML parsing 
strategy for POE::Wheels that will be dealing with XML streams.

POE::Filter::XML relies upon XML::SAX and XML::SAX::ParserFactory to acquire
a parser for parsing XML. 

The assumed parser is XML::SAX::Expat::Incremental (Need a real push parser)

Default, the Filter will spit out POE::Filter::XML::Nodes because that is 
what the default XML::SAX compliant Handler produces from the stream it is 
given. You are of course encouraged to override the default Handler for your 
own purposes if you feel POE::Filter::XML::Node to be inadequate.

Also, Filter requires POE::Filter::XML::Nodes for put(). If you are wanting to
send raw XML, it is recommened that you subclass the Filter and override put()

=head1 PUBLIC METHODS

Since POE::Filter::XML follows the POE::Filter API look to POE::Filter for 
documentation. Deviations from Filter API will be covered here.

=over 4 

=item new()

new() accepts a total of three(3) arguments that are all optional: (1) a string
that is XML waiting to be parsed (i.e. xml received from the wheel before the
Filter was instantiated), (2) a coderef to be executed upon a parsing error,
(3) and a XML::SAX compliant Handler. 

If no options are specified, then a default coderef containing a simple
Carp::confess is generated, and a new instance of POE::Filter::XML::Handler is 
used.

=item reset()

reset() is an internal method that gets called when either a stream_start(1)
POE::Filter::XML::Node gets placed into the filter via put(), or when a
stream_end(1) POE::Filter::XML::Node is pulled out of the queue of finished
Nodes via get_one(). This facilitates automagical behavior when using the 
Filter within the XMPP protocol that requires a many new stream initiations.
This method really should never be called outside of the Filter, but it is 
documented here in case the Filter is used outside of the POE context.

Internally reset() gets another parser, calls reset() on the stored handler
and then deletes any data in the buffer.

=back 4

=head1 BUGS AND NOTES

The current XML::SAX::Expat::Incremental version introduces some ugly circular
references due to the way XML::SAX::Expat constructs itself (it stores a 
references to itself inside the XML::Parser object it constructs to get an
OO-like interface within the callbacks passed to it). Upon destroy, I clean
these up with Scalar::Util::weaken and by manually calling release() on the
ExpatNB object created within XML::SAX::Expat::Incremental. This is an ugly
hack. If anyone finds some subtle behavior I missed, let me know and I will
drop XML::SAX support all together going back to just plain-old XML::Parser.

Meta filtering was removed. No one was using it and the increased level of
indirection was a posible source of performance issues.

put() now requires POE::Filter::XML::Nodes. Raw XML text can no longer be
put() into the stream without subclassing the Filter and overriding put().

reset() semantics were properly worked out to now be automagical and
consistent. Thanks Eric Waters (ewaters@uarc.com).

=head1 AUTHOR

Copyright (c) 2003 - 2006 Nicholas Perez. 
Released and distributed under the GPL.

=cut
