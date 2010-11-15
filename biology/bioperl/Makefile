# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:49 espie Exp $

CATEGORIES=	biology perl5

COMMENT=	perl tools for bioinformatics
HOMEPAGE=	http://bioperl.org/
MASTER_SITES=	${HOMEPAGE}DIST/
DISTNAME=	bioperl-1.5.0
REVISION=	0


# Artistic License
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

PKG_ARCH=	*

RUN_DEPENDS=	www/p5-libwww \
		www/p5-HTML-Parser \
		devel/p5-IO-stringy \
		devel/p5-IO-String \
		textproc/p5-XML-Parser \
		textproc/p5-XML-Writer \
		textproc/p5-Libxml \
		textproc/p5-XML-Twig \
		www/p5-SOAP-Lite \
		databases/p5-DBD-mysql \
		graphics/p5-GD \
		devel/p5-Clone \
		textproc/p5-XML-SAX \
		graphics/p5-SVG \
		biology/AcePerl \
		graphics/p5-GD-SVG \
		devel/p5-Graph \
		devel/p5-Class-AutoClass

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

pre-configure:
	@rm -f ${WRKSRC}/Bio/Graphics/FeatureFile.pm.orig
.include <bsd.port.mk>
