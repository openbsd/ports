# $OpenBSD: Makefile,v 1.5 2018/06/27 21:04:07 espie Exp $

COMMENT =	lightweight compositor for X, forked from xcompmgr-dana

V =		0.1_beta2
PKGNAME =	compton-${V}
DISTNAME =	compton-git-v0.1_beta2-2013-10-21
REVISION =	2

CATEGORIES =	x11

HOMEPAGE =	https://github.com/chjj/compton

MAINTAINER =	Sunil Nimmagadda <sunil@nimmagadda.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xdamage Xext Xfixes Xinerama Xrandr
WANTLIB += Xrender c config dbus-1 m pcre pthread

MASTER_SITES =	https://github.com/chjj/compton/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

BUILD_DEPENDS =		textproc/asciidoc
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/libconfig \
			devel/pcre \
			x11/dbus

USE_GMAKE =		Yes
MAKE_FLAGS = 		CC="${CC}" \
			COMPTON_VERSION="${V}" \
			APPDIR="${PREFIX}/share/applications" \
			BINDIR="${PREFIX}/bin" \
			MANDIR="${PREFIX}/man/man1"

ALL_TARGET =		compton

NO_TEST = 		Yes

.include <bsd.port.mk>
