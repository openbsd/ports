# $OpenBSD: Makefile,v 1.1.1.1 2016/05/27 00:03:44 zhuk Exp $

COMMENT =	C++ bindings/wrapper for gpgme
DISTNAME =	gpgmepp-${VERSION}
CATEGORIES =	security

SHARED_LIBS =	KF5QGpgme		0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp-pthread	0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp		0.0 # 4.80

WANTLIB = Qt5Core assuan gpg-error gpgme gpgme-pthread m pthread

KDE5 =		Yes

BUILD_DEPENDS =	devel/boost
LIB_DEPENDS =	security/gpgme

.include <bsd.port.mk>
