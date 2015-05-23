# $OpenBSD: Makefile,v 1.3 2015/05/23 16:34:40 czarkoff Exp $

COMMENT =	lightweight compositor for X, forked from xcompmgr-dana

VERSION =	0.1_beta2
GH_ACCOUNT =	chjj
GH_PROJECT =	compton
GH_TAGNAME =	v${VERSION}
DISTNAME =	compton-${VERSION:S/_//}
CATEGORIES =	x11
REVISION =	0

MAINTAINER =	Sunil Nimmagadda <sunil@nimmagadda.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xdamage Xext Xfixes Xinerama Xrandr
WANTLIB += Xrender c config dbus-1 m pcre pthread

BUILD_DEPENDS =		textproc/asciidoc
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/libconfig \
			devel/pcre \
			x11/dbus

USE_GMAKE =		Yes
MAKE_FLAGS = 		CC="${CC}" \
			COMPTON_VERSION="${VERSION}" \
			APPDIR="${PREFIX}/share/applications" \
			BINDIR="${PREFIX}/bin" \
			MANDIR="${PREFIX}/man/man1"

ALL_TARGET =		compton

NO_TEST = 		Yes

.include <bsd.port.mk>
