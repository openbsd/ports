# $OpenBSD: Makefile,v 1.2 2009/03/25 13:55:21 jasper Exp $

COMMENT =	remotely execute programs on a Windows host

DISTNAME =	winexe-source-081123
PKGNAME =	winexe-0.90

CATEGORIES =	net

HOMEPAGE =	http://eol.ovh.org/winexe/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2, source includes most of the Samba 4 tree and Heimdal,
# though only a small part of it is built.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c
BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS =		gnutls::security/gnutls
MODULES =		converters/libiconv

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.59

NO_REGRESS =		Yes
ALL_TARGET =		proto bin/winexe

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/winexe ${PREFIX}/bin/winexe

.include <bsd.port.mk>
