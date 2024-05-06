COMMENT =	versatile file searching tool

XFCE_GOODIE =	catfish
XFCE_VERSION =	4.18.0
MODPY_EGG_VERSION =	${XFCE_VERSION}
CATEGORIES =	textproc
REVISION =		0

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	https://bluesabre.org/projects/catfish/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		x11/xfce4
MODPY_ADJ_FILES=bin/catfish
NO_BUILD=	Yes
# NO_BUILD=Yes defaults this to No, but configure and fake need it
MODPY_BUILDDEP=	Yes

RUN_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/xdg-utils \
		devel/py-pexpect${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/gtk+4,-guic \
		x11/xfce4/xfconf

BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS} \
		devel/py-pexpect${MODPY_FLAVOR} \
		devel/gettext,-tools \
		x11/dbus-python${MODPY_FLAVOR} \
		devel/py-distutils-extra${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

# fix zero-mtime *.po files which arent built by build_i18n
post-patch:
	touch ${WRKSRC}/po/*.po

.include <bsd.port.mk>
