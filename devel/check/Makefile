# $OpenBSD: Makefile,v 1.15 2019/05/20 21:36:54 sthen Exp $

COMMENT =	unit test framework for C programs

V =		0.12.0
DISTNAME =	check-$V
SHARED_LIBS +=  check                3.1      # unknown

CATEGORIES =	devel

HOMEPAGE =	https://libcheck.github.io/check/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread

MASTER_SITES =	https://github.com/libcheck/check/releases/download/$V/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
