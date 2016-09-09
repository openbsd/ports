# $OpenBSD: Makefile,v 1.2 2016/09/09 09:47:42 dcoppa Exp $

COMMENT =	C++ bindings/wrapper for gpgme
DISTNAME =	gpgmepp-${VERSION}
REVISION =	0
CATEGORIES =	security

SHARED_LIBS =	KF5QGpgme		0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp-pthread	0.0 # 4.80
SHARED_LIBS +=	KF5Gpgmepp		0.0 # 4.80

WANTLIB = Qt5Core assuan gpg-error gpgme gpgme-pthread m pthread

KDE5 =		Yes

BUILD_DEPENDS =	devel/boost
LIB_DEPENDS =	security/gpgme
RUN_DEPENDS =	devel/boost

.include <bsd.port.mk>
