# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:27 sthen Exp $

COMMENT =		sigrok protocol decoding library
REVISION =		0

SIGROK_PROJECT =	libsigrokdecode
SIGROK_VERSION =	0.5.2

SHARED_LIBS +=  sigrokdecode              0.0 # 0.1

WANTLIB += glib-2.0 iconv intl m pcre pthread util ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS =		devel/glib2

.include <bsd.port.mk>
