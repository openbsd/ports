# $OpenBSD: Makefile,v 1.10 2016/03/14 18:20:54 steven Exp $

SHARED_ONLY =	Yes

COMMENT =	management tool for sensitive data

V =		2.0.2
DISTNAME =	keepassx-$V
CATEGORIES =	security

HOMEPAGE =	https://www.keepassx.org/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://www.keepassx.org/releases/$V/

MODULES =	x11/qt4 \
		devel/cmake

CONFIGURE_ARGS=	-DWITH_CXX11=no

WANTLIB += QtGui X11 Xi Xtst c m pthread stdc++
WANTLIB += gcrypt z

LIB_DEPENDS =	security/libgcrypt

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

.include <bsd.port.mk>
