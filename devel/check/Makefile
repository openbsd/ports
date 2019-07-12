# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:05 sthen Exp $

COMMENT =	unit test framework for C programs

V =		0.12.0
DISTNAME =	check-$V
SHARED_LIBS +=  check                3.1      # unknown

CATEGORIES =	devel

HOMEPAGE =	https://libcheck.github.io/check/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread

MASTER_SITES =	https://github.com/libcheck/check/releases/download/$V/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
