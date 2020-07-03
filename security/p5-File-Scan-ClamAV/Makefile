# $OpenBSD: Makefile,v 1.6 2020/07/03 21:45:42 sthen Exp $

COMMENT= 	client class for the ClamAV clamd virus scanner daemon

DISTNAME =	File-Scan-ClamAV-1.95
CATEGORIES=	security
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/clamav
BUILD_DEPENDS=	security/clamav
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage
CONFIGURE_ENV=	CLAMD_PATH=${LOCALBASE}/sbin/

.include <bsd.port.mk>
