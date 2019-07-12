# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:03 sthen Exp $

COMMENT =	management tool for sensitive data

V =		2.0.3
DISTNAME =	keepassx-$V
REVISION =	5
CATEGORIES =	security

HOMEPAGE =	https://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.keepassx.org/releases/$V/

MODULES =	x11/qt4 \
		devel/cmake

CONFIGURE_ARGS=	-DWITH_CXX11=no

WANTLIB += QtGui X11 Xi Xtst c gcrypt m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	security/libgcrypt

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

.include <bsd.port.mk>
