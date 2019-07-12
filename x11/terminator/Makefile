# $OpenBSD: Makefile,v 1.21 2019/07/12 20:51:22 sthen Exp $

COMMENT =		GTK3 terminal emulator with split-window and tabs support

MODPY_EGG_VERSION =	1.91
DISTNAME =		terminator-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		x11

HOMEPAGE =		https://gnometerminator.blogspot.com/p/introduction.html

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://launchpad.net/terminator/gtk3/${MODPY_EGG_VERSION}/+download/

MODULES =		lang/python \
			textproc/intltool

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			devel/py-notify \
			devel/vte3 \
			sysutils/py-psutil \
			x11/gtk+3,-guic \
			x11/gtk+3 \
			x11/keybinder3

MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--without-icon-cache

# --single-version-externally-managed option used by MODPY doesn't exist
MODPY_DISTUTILS_INSTALL = install --prefix=${LOCALBASE} --root=${DESTDIR}

.include <bsd.port.mk>
