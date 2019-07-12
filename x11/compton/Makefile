# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:09 sthen Exp $

COMMENT =	lightweight compositor for X, forked from xcompmgr-dana

V =		0.1_beta2
PKGNAME =	compton-${V}
DISTNAME =	compton-git-v0.1_beta2-2013-10-21
REVISION =	5

CATEGORIES =	x11

HOMEPAGE =	https://github.com/chjj/compton

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

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
