# $OpenBSD: Makefile,v 1.14 2017/12/07 13:12:44 espie Exp $

COMMENT=	compress CSS info for transmission

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CSS-Squish-0.10
CATEGORIES=	www
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-URI
TEST_DEPENDS=devel/p5-Test-LongString

.include <bsd.port.mk>
