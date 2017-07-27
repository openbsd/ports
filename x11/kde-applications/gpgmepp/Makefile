# $OpenBSD: Makefile,v 1.5 2017/07/27 10:15:29 sthen Exp $

COMMENT =	C++ bindings/wrapper for gpgme
VERSION=	16.04.0
DISTNAME =	gpgmepp-${VERSION}
REVISION =	2
CATEGORIES =	security

SHARED_LIBS =	KF5QGpgme		0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp-pthread	0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp		0.0 # 4.80

WANTLIB = Qt5Core assuan gpg-error gpgme gpgme-pthread m pthread
WANTLIB += ${COMPILER_LIBCXX}

KDE5 =		Yes

BUILD_DEPENDS =	devel/boost
LIB_DEPENDS =	security/gpgme
RUN_DEPENDS =	devel/boost

.include <bsd.port.mk>
