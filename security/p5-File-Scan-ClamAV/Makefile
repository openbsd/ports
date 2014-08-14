# $OpenBSD: Makefile,v 1.1.1.1 2014/08/14 14:36:49 henning Exp $

COMMENT= 	client class for the ClamAV clamd virus scanner daemon

DISTNAME=	File-Scan-ClamAV-1.91
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	security/clamav
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage
CONFIGURE_ENV=	CLAMD_PATH=${LOCALBASE}/sbin

.include <bsd.port.mk>
