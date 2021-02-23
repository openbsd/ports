# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:11 sthen Exp $

COMMENT =		sigrok protocol decoding library
REVISION =		0

SIGROK_PROJECT =	libsigrokdecode
SIGROK_VERSION =	0.5.3

SHARED_LIBS +=  sigrokdecode              0.0 # 0.1

WANTLIB += glib-2.0 iconv intl m pcre pthread util ${MODPY_WANTLIB}

MODULES =		lang/python
LIB_DEPENDS =		devel/glib2

.include <bsd.port.mk>
