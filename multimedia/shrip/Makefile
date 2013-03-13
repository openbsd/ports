# $OpenBSD: Makefile,v 1.3 2013/03/13 17:12:45 pascal Exp $

COMMENT =		shell client for ogmrip

DISTNAME =		shrip-0.6.0
REVISION =		0

CATEGORIES =		multimedia

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c dvdread enca ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m ogmdvd ogmjob ogmrip ogmrip-lavc ogmrip-mplayer
WANTLIB += pcre pthread xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogmrip/}

MODULES =		devel/gettext
BUILD_DEPENDS =		textproc/intltool
LIB_DEPENDS =		multimedia/ogmrip,-main

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/shrip
	${INSTALL_DATA} ${WRKSRC}/shrip.conf \
		${PREFIX}/share/examples/shrip

.include <bsd.port.mk>
