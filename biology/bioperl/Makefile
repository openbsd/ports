# $OpenBSD: Makefile,v 1.16 2014/03/28 11:40:16 sthen Exp $

BROKEN=		needs update for perl 5.18

COMMENT=	perl tools for bioinformatics

DISTNAME=	BioPerl-1.6.1
PKGNAME=	${DISTNAME:L}# No p5-prefix here.
REVISION=	2
CATEGORIES=	biology

HOMEPAGE=	http://bioperl.org/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/DIST/

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/bioperl/

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	biology/AcePerl \
		databases/p5-DBD-mysql \
		converters/p5-Convert-Binary-C \
		devel/p5-Algorithm-Munkres \
		devel/p5-Array-Compare \
		devel/p5-Class-AutoClass \
		devel/p5-Clone \
		devel/p5-Data-Stag \
		devel/p5-Graph \
		devel/p5-IO-String \
		devel/p5-IO-stringy \
		devel/p5-Set-Scalar \
		devel/p5-Test-Exception \
		devel/p5-Tree-DAG_Node \
		graphics/p5-GD \
		graphics/p5-GD-SVG \
		graphics/p5-SVG-Graph \
		math/p5-GraphViz \
		misc/p5-Spreadsheet-ParseExcel \
		misc/p5-Spreadsheet-WriteExcel \
		textproc/p5-XML-DOM \
		textproc/p5-Libxml \
		textproc/p5-XML-DOM-XPath \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX-Writer \
		textproc/p5-XML-Simple \
		textproc/p5-XML-Twig \
		textproc/p5-XML-Writer \
		www/p5-HTML-Parser \
		www/p5-SOAP-Lite \
		www/p5-URI \
		www/p5-libwww

# Optional (not ported) dependencies:
# Postscript-TextBlock
# Tie-Cacher

CONFIGURE_ENV+= 	PERL_MM_USE_DEFAULT=Yes

.include <bsd.port.mk>
