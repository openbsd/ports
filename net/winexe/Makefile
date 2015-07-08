# $OpenBSD: Makefile,v 1.7 2015/07/08 12:58:52 sthen Exp $

COMMENT =	remotely execute programs on a Windows host

DISTNAME =	winexe-source-081123
PKGNAME =	winexe-0.90

REVISION =	1

CATEGORIES =	net

HOMEPAGE =	http://sourceforge.net/p/winexe/wiki/Home/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2, source includes most of the Samba 4 tree and Heimdal,
# though only a small part of it is built.
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c gnutls pthread tasn1
BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS =		security/gnutls
MODULES =		converters/libiconv

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.59

NO_TEST =		Yes
ALL_TARGET =		proto bin/winexe

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/winexe ${PREFIX}/bin/winexe

.include <bsd.port.mk>
