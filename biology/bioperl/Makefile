# $OpenBSD: Makefile,v 1.22 2020/08/25 23:56:31 cwen Exp $

COMMENT=	perl tools for bioinformatics

DISTNAME=	BioPerl-1.7.7
PKGNAME=	${DISTNAME:L}# No p5-prefix here.
CATEGORIES=	biology

HOMEPAGE=	https://bioperl.org/

# Perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan

CPAN_AUTHOR=		CJFIELDS
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/bioperl/

RUN_DEPENDS=		devel/p5-Data-Stag \
			devel/p5-Error \
			devel/p5-Graph \
			devel/p5-IO-String \
			devel/p5-IO-stringy \
			devel/p5-IPC-Run \
			devel/p5-List-MoreUtils \
			devel/p5-Module-Build \
			devel/p5-Set-Scalar \
			devel/p5-Test-Most \
			devel/p5-Test-RequiresInternet \
			devel/p5-YAML \
			textproc/p5-Libxml \
			textproc/p5-XML-DOM \
			textproc/p5-XML-DOM-XPath \
			textproc/p5-XML-LibXML \
			textproc/p5-XML-SAX \
			textproc/p5-XML-SAX-Base \
			textproc/p5-XML-SAX-Writer \
			textproc/p5-XML-Twig \
			textproc/p5-XML-Writer \
			www/p5-HTTP-Message \
			www/p5-URI \
			www/p5-libwww
TEST_DEPENDS=		devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Weaken


MAKE_ENV +=		TEST_POD=Yes

PKG_ARCH=		*

.include <bsd.port.mk>
