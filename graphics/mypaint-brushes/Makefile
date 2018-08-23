# $OpenBSD: Makefile,v 1.1.1.1 2018/08/23 05:35:59 landry Exp $

COMMENT =	brushes used by software using libmypaint

GH_ACCOUNT =	Jehan
GH_PROJECT =	mypaint-brushes
GH_TAGNAME =	v1.3.0

CATEGORIES =	graphics

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} ./autogen.sh

.include <bsd.port.mk>
