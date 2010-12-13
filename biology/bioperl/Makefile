# $OpenBSD: Makefile,v 1.8 2010/12/13 10:26:00 jasper Exp $

COMMENT=	perl tools for bioinformatics

DISTNAME=	bioperl-1.5.0
PKGNAME=	${DISTNAME}	# No p5-prefix here.
REVISION=	1
CATEGORIES=	biology

HOMEPAGE=	http://bioperl.org/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/DIST/

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/bioperl/

RUN_DEPENDS=	biology/AcePerl \
		databases/p5-DBD-mysql \
		devel/p5-Class-AutoClass \
		devel/p5-Clone \
		devel/p5-Graph \
		devel/p5-IO-String \
		devel/p5-IO-stringy \
		graphics/p5-GD \
		graphics/p5-GD-SVG \
		graphics/p5-SVG \
		textproc/p5-Libxml \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX \
		textproc/p5-XML-Twig \
		textproc/p5-XML-Writer \
		www/p5-HTML-Parser \
		www/p5-SOAP-Lite \
		www/p5-libwww

REGRESS_DEPENDS=${RUN_DEPENDS}

# stuff not yet integrated:
#  SVG::Graph, Generate optional SVG output,
#   (The Bio::TreeIO::svggraph in Bioperl needs it for creating SVG images)
#  XML::SAX::Writer, New style SAX parser,
#   (The Bio::SeqIO::tigrxml,Bio::SeqIO::bsml_sax in Bioperl needs it for Writers)
#  srsperl, Sequence Retrieval System (SRS) perl 
#   (needed for API/alternative way of retrieving sequences/Bio::LiveSeq::IO::SRS.pm)

CONFIGURE_ENV+= 	PERL_MM_USE_DEFAULT=Yes

pre-configure:
	@rm -f ${WRKSRC}/Bio/Graphics/FeatureFile.pm.orig

.include <bsd.port.mk>
