# $OpenBSD: Makefile,v 1.4 2019/12/18 06:50:30 bentley Exp $

COMMENT =		sigrok protocol decoding library

SIGROK_PROJECT =	libsigrokdecode
SIGROK_VERSION =	0.5.3

SHARED_LIBS +=  sigrokdecode              0.0 # 0.1

WANTLIB += glib-2.0 iconv intl m pcre pthread util ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
LIB_DEPENDS =		devel/glib2

.include <bsd.port.mk>
