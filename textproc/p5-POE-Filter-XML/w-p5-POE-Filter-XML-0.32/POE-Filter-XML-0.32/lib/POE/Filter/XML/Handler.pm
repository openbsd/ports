package POE::Filter::XML::Handler;
use Filter::Template; 
const XNode POE::Filter::XML::Node

use strict;
use warnings;
use POE::Filter::XML::Node;

our $VERSION = '0.23';

sub new()
{
	my ($class) = @_;
	my $self = {
		
		'depth'		=> -1,
		'currnode'	=> undef,
		'finished'	=> [],
		'parents'	=> [],
	};

	bless $self, $class;
	return $self;
}

sub reset()
{
	my $self = shift;

	$self->{'currnode'} = undef;
	$self->{'finished'} = [];
	$self->{'parents'} = [];
	$self->{'depth'} = -1;
	$self->{'count'} = 0;
}

sub start_document() { }
sub end_document() { }

sub start_element() 
{
	my ($self, $data) = @_;
	
	if($self->{'depth'} == -1) 
	{	    
		#start of a document: make and return the tag
		my $start = XNode->new($data->{'Name'})->stream_start(1);
		
		foreach my $attrib (values %{$data->{'Attributes'}})
		{
			$start->attr($attrib->{'Name'}, $attrib->{'Value'});
		}

#		if(defined($data->{'NamespaceURI'}))
#		{
#			$start->attr('xmlns', $data->{'NamespaceURI'});
#		}
		
		push(@{$self->{'finished'}}, $start);
		
		$self->{'count'}++;
		$self->{'depth'} = 0;
		
	} else {
	
		$self->{'depth'} += 1;

		# Top level fragment
		if($self->{'depth'} == 1)
		{
			$self->{'currnode'} = XNode->new($data->{'Name'});
			
			foreach my $attrib (values %{$data->{'Attributes'}})
			{
				$self->{'currnode'}->attr
				(
					$attrib->{'Name'}, 
					$attrib->{'Value'}
				);
			}

			push(@{$self->{'parents'}}, $self->{'currnode'});
		
		} else {
		    
			# Some node within a fragment
			my $kid = $self->{'currnode'}->insert_tag($data->{'Name'});
			
			foreach my $attrib (values %{$data->{'Attributes'}})
			{
				$kid->attr($attrib->{'Name'}, $attrib->{'Value'});
			}

			push(@{$self->{'parents'}}, $self->{'currnode'});
			
			$self->{'currnode'} = $kid;
		}
	}
}

sub end_element()
{
	my ($self, $data) = @_;
	
	if($self->{'depth'} == 0)
	{
		# gracefully deal with ending document tag
		# and maybe send it off? 
		# could be used to signal reset()?
		
		my $end = XNode->new($data->{'Name'})->stream_end(1);
		
		push(@{$self->{'finished'}}, $end);
		
		$self->{'count'}++;
		
	} elsif($self->{'depth'} == 1) {
		
		push(@{$self->{'finished'}}, $self->{'currnode'});
		
		$self->{'count'}++;
		
		delete $self->{'currnode'};
		
		pop(@{$self->{'parents'}});
	
	} else {
	
		$self->{'currnode'} = pop(@{$self->{'parents'}});
	}

	$self->{'depth'}--;
}

sub characters() 
{
	my($self, $data) = @_;

	if($self->{'depth'} == 0)
	{
		return;
	}

	my $data2 = $self->{'currnode'}->data() . $data->{'Data'};
	$self->{'currnode'}->data($data2);
}

sub get_node()
{
	my $self = shift;
	$self->{'count'}--;
	return shift(@{$self->{'finished'}});
}

sub finished_nodes()
{
	my $self = shift;
	return $self->{'count'};
}

1;
