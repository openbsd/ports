COMMENT =	versatile file searching tool

XFCE_GOODIE =	catfish
XFCE_VERSION =	4.20.0
CATEGORIES =	textproc

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	https://bluesabre.org/projects/catfish/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	devel/meson \
		lang/python \
		x11/xfce4
MODPY_ADJ_FILES=bin/catfish

RUN_DEPENDS =	devel/py-gobject3 \
		devel/desktop-file-utils \
		devel/xdg-utils \
		devel/py-pexpect \
		x11/dbus-python \
		x11/gtk+4,-guic \
		x11/xfce4/xfconf

BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS} \
		devel/py-pexpect \
		devel/gettext,-tools \
		x11/dbus-python \
		devel/py-distutils-extra \
		devel/py-setuptools

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

# fix zero-mtime *.po files which arent built by build_i18n
post-patch:
	touch ${WRKSRC}/po/*.po

.include <bsd.port.mk>
