# $OpenBSD: Makefile,v 1.4 2017/05/12 19:21:42 benoit Exp $

COMMENT= 	client class for the ClamAV clamd virus scanner daemon

DISTNAME =	File-Scan-ClamAV-1.95
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/clamav
BUILD_DEPENDS=	security/clamav
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage
CONFIGURE_ENV=	CLAMD_PATH=${LOCALBASE}/sbin/

.include <bsd.port.mk>
