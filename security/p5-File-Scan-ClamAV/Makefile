# $OpenBSD: Makefile,v 1.2 2015/09/19 08:09:16 ajacoutot Exp $

COMMENT= 	client class for the ClamAV clamd virus scanner daemon

DISTNAME=	File-Scan-ClamAV-1.93
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	security/clamav
BUILD_DEPENDS=	security/clamav
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage
CONFIGURE_ENV=	CLAMD_PATH=${LOCALBASE}/sbin

.include <bsd.port.mk>
