# $OpenBSD: Makefile,v 1.15 2019/07/12 21:02:28 sthen Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CSS-Squish-0.10
CATEGORIES=	www
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-URI
TEST_DEPENDS=devel/p5-Test-LongString

.include <bsd.port.mk>
