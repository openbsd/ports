# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:08 sthen Exp $

COMMENT= 	client class for the ClamAV clamd virus scanner daemon

DISTNAME =	File-Scan-ClamAV-1.95
CATEGORIES=	security

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
