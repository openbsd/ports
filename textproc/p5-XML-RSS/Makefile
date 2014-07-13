# $OpenBSD: Makefile,v 1.37 2014/07/13 08:56:56 giovanni Exp $

COMMENT=	perl module to manage XML RSS files

DISTNAME=	XML-RSS-1.55
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	devel/p5-DateTime \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-Test-Manifest \
		textproc/p5-XML-Parser>=2.23  \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Differences \
		devel/p5-Test-Manifest>=0.9 \
		devel/p5-Test-Pod-Coverage \
		devel/p5-Test-TrailingSpace

MODCPAN_EXAMPLES=	Yes

post-install:
	find ${WRKSRC} -name \*.orig -print0 | xargs -0 rm -f
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
