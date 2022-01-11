# $OpenBSD: Makefile,v 1.9 2022/01/11 18:00:53 jca Exp $

COMMENT =		sigrok protocol decoding library
REVISION =		3

SIGROK_PROJECT =	libsigrokdecode
SIGROK_VERSION =	0.5.3

SHARED_LIBS +=  sigrokdecode              0.0 # 0.1

WANTLIB += glib-2.0 iconv intl m pcre pthread util ${MODPY_WANTLIB}

MODULES =		lang/python
BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		devel/glib2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
