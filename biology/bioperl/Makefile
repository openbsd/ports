# $OpenBSD: Makefile,v 1.4 2009/05/19 10:35:19 sthen Exp $

CATEGORIES=	biology perl5

COMMENT=	perl tools for bioinformatics
HOMEPAGE=	http://bioperl.org/
MASTER_SITES=	${HOMEPAGE}DIST/
DISTNAME=	bioperl-1.5.0
PKGNAME=	${DISTNAME}p0


# Artistic License
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

PKG_ARCH=	*

RUN_DEPENDS=	:p5-libwww-*:www/p5-libwww \
		:p5-HTML-Parser-*:www/p5-HTML-Parser \
		:p5-IO-stringy-*:devel/p5-IO-stringy \
		:p5-IO-String-*:devel/p5-IO-String \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:p5-XML-Writer-*:textproc/p5-XML-Writer \
		:p5-Libxml-*:textproc/p5-Libxml \
		:p5-XML-Twig-*:textproc/p5-XML-Twig \
		:p5-SOAP-Lite-*:www/p5-SOAP-Lite \
		:p5-DBD-mysql-*:databases/p5-DBD-mysql \
		:p5-GD-*:graphics/p5-GD \
		:p5-Clone-*:devel/p5-Clone \
		:p5-XML-SAX-*:textproc/p5-XML-SAX \
		:p5-SVG-*:graphics/p5-SVG \
		:AcePerl-*:biology/AcePerl \
		:p5-GD-SVG-*:graphics/p5-GD-SVG \
		:p5-Graph-*:devel/p5-Graph \
		:p5-Class-AutoClass-*:devel/p5-Class-AutoClass

REGRESS_DEPENDS=${RUN_DEPENDS}

# stuff not yet integrated:
#  SVG::Graph, Generate optional SVG output,
#   (The Bio::TreeIO::svggraph in Bioperl needs it for creating SVG images)
#  XML::SAX::Writer, New style SAX parser,
#   (The Bio::SeqIO::tigrxml,Bio::SeqIO::bsml_sax in Bioperl needs it for Writers)
#  srsperl, Sequence Retrieval System (SRS) perl 
#   (needed for API/alternative way of retrieving sequences/Bio::LiveSeq::IO::SRS.pm)


CONFIGURE_STYLE=	perl
CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes
.include <bsd.port.mk>
