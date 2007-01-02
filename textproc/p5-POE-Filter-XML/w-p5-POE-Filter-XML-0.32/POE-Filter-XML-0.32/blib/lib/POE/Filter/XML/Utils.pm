package POE::Filter::XML::Utils;

use strict;
use warnings;

use IO::File;
use POE::Filter::XML::NS qw/ :IQ :JABBER /;

require Exporter;

our $VERSION = '0.24';

our @ISA = qw/ Exporter /;
our @EXPORT = qw/ get_config get_reply get_error get_user get_host
					get_resource get_bare_jid get_parts
					get_stanza_error get_stream_error encode decode/;


sub decode 
{
	my $data = shift;
	
	if(defined($data) and length($data))
	{
		$data =~ s/&amp;/&/go;
	   	$data =~ s/&lt;/</go;
		$data =~ s/&gt;/>/go;
		$data =~ s/&apos;/'/go;
		$data =~ s/&quot;/"/go;
	}
	return $data;
}

sub encode 
{
	my $data = shift;
	
	if(defined($data) and length($data))
	{
		$data =~ s/&/&amp;/go;
		$data =~ s/</&lt;/go;
		$data =~ s/>/&gt;/go;
		$data =~ s/'/&apos;/go;
		$data =~ s/"/&quot;/go;
	}
	return $data;

}



sub get_config
{
	my $path = shift;
	my $file;
	
	if(defined($path))
	{
		$file = IO::File->new($path);

	} else {
		
		$file = IO::File->new('./config.xml');
	}

	my $filter = POE::Filter::XML->new();
	my @lines = $file->getlines();
	my $nodes = $filter->get(\@lines);
	splice(@$nodes,0,1);
	my $hash = {};
	foreach my $node (@$nodes)
	{
		$hash->{$node->name()} = get_hash_from_node($node);
	}

	return $hash;

}

sub get_hash_from_node
{
	my $node = shift;
	my $hash = {};
	return $node->data() unless keys %{$node->[3]} > 0;
	foreach my $kid (keys %{$node->[3]})
	{
		$hash->{$node->[3]->{$kid}->name()} 
			= get_hash_from_node($node->[3]->{$kid});

	}
	return $hash;

}

sub get_reply
{
	my $node = shift;

	my $attribs = $node->get_attrs();
	my $to = $attribs->{'to'};
	my $from = $attribs->{'from'};

	$node->attr('to' => $from);
	$node->attr('from' => $to);

	if($node->name() eq 'iq')
	{
		$node->attr('type' => +IQ_RESULT);
	}

	return $node;
}

sub get_error
{
	my ($node, $error, $code) = @_;

	my $from = $node->attr('from');
	my $to = $node->attr('to');

	$node->attr('to' => $from);
	$node->attr('from' => $to);
	$node->attr('type' => +IQ_ERROR);

	my $err = $node->insert_tag('error');
	$err->attr('code' => $code);
	$err->data($error);

	return $node;
	
}

sub get_stanza_error
{
	my ($node, $error, $type) = @_;
	
	my $from = $node->attr('from');
	my $to = $node->attr('to');
	$node->attr('to' => $from);
	$node->attr('from' => $to);
	$node->attr('type' => +IQ_ERROR);
	
	$node->insert_tag('error')->attr('type', $type)
		->insert_tag($error, ['xmlns', +NS_XMPP_STANZA]);
	
	return $node;
}

sub get_user
{
	my $jid = shift;
	$jid =~ s/\@\S+$//;
	return $jid;
}

sub get_host
{
	my $jid = shift;
	$jid =~ s/^\S+\@//;
	$jid =~ s/\/\S+$//;
	return $jid;
}

sub get_bare_jid
{
	my $jid = shift;
	$jid =~ s/\/\S+$//;
	return $jid;
}

sub get_resource
{
	my $jid = shift;
	$jid =~ s/^\S+\///;
	return $jid;
}

sub get_parts
{
	my $jid = shift;
	my $array = [];
	my $user = get_user($jid);
	my $domain = get_host($jid);
	my $resource = get_resource($jid);
	push(@$array, $user, $domain, $resource);

	return $array;
}

1;

__END__

=pod

=head1 NAME

POE::Filter::XML::Utils - General purpose utilities for POE::Filter::XML

=head1 SYNOPSIS

 use POE::Filter::XML::Utils; # exports functions listed below

 my $hash_ref_to_config = get_config($absolute_path_to_config);
 my $hash_ref_to_config = get_config();  # defaults to ./config.xml

 my $node = get_reply($node);  # swaps to and from and sets 'type' to IQ_RESULT
 my $new_node = get_reply($node, 'blank');  # makes and returns blank result
 
 my $node = get_error($node, $text_error, $code_number); # add error and reply

 my $user = get_user('nickperez@jabber.org'); # gets 'nickperez'
 my $domain = get_host('nickperez@jabber.org'); # gets 'jabber.org'
 my $resource = get_resource('nickperez@jabber.org/Gaim'); # gets 'Gaim'

 my $array = get_parts('nickperez@jabber.org/Gaim'); 
 # gets username: $array->[0] == 'nickperez'
 # gets domain: $array->[1] == 'jabber.org'
 # gets resource: $array->[2] == 'Gaim' 

=head1 DESCRIPTION

POE::Filter::XML::Utils provides some common use utilities for use with 
POE::Filter::XML such as XML configuration files, make nodes reply, add errors
for error replies, and gather things from jids.

=head1 AUTHOR

Copyright (c) 2003, 2006 Nicholas Perez. Released and distributed under the GPL.

=cut

