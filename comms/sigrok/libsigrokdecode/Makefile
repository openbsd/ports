# $OpenBSD: Makefile,v 1.8 2021/11/02 00:00:15 sthen Exp $

COMMENT =		sigrok protocol decoding library
REVISION =		2

SIGROK_PROJECT =	libsigrokdecode
SIGROK_VERSION =	0.5.3

SHARED_LIBS +=  sigrokdecode              0.0 # 0.1

WANTLIB += glib-2.0 iconv intl m pcre pthread util ${MODPY_WANTLIB}

MODULES =		lang/python
LIB_DEPENDS =		devel/glib2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
