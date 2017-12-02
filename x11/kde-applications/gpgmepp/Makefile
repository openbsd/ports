# $OpenBSD: Makefile,v 1.6 2017/12/02 12:44:33 edd Exp $

COMMENT =	C++ bindings/wrapper for gpgme
VERSION=	16.04.0
DISTNAME =	gpgmepp-${VERSION}
REVISION =	3
CATEGORIES =	security

SHARED_LIBS =	KF5QGpgme		0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp-pthread	0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp		0.0 # 4.80

WANTLIB = Qt5Core assuan gpg-error gpgme m pthread
WANTLIB += ${COMPILER_LIBCXX}

KDE5 =		Yes

BUILD_DEPENDS =	devel/boost
LIB_DEPENDS =	security/gpgme
RUN_DEPENDS =	devel/boost

.include <bsd.port.mk>
