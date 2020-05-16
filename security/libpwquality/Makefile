# $OpenBSD: Makefile,v 1.19 2020/05/16 10:41:32 ajacoutot Exp $

COMMENT =		library to generate, and check strengh of passwords

V =			1.4.2
SUBST_VARS =		V
GH_PROJECT =		libpwquality
GH_ACCOUNT =		libpwquality
GH_TAGNAME =		libpwquality-${V}
DISTNAME =		libpwquality-${V}
REVISION =		0

SHARED_LIBS +=  pwquality            1.0      # 1.2

CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += c crack iconv intl pthread z

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

USE_GMAKE =		Yes

BUILD_DEPENDS =		devel/gettext,-tools \
			shells/bash

LIB_DEPENDS =		security/cracklib

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--with-python-binary=python${MODPY_VERSION} \
			--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>
