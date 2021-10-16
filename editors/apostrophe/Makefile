# $OpenBSD $

COMMENT=		distraction free editor

GH_TAGNAME=		v2.5
GH_ACCOUNT=		ApostropheEditor
GH_PROJECT=		Apostrophe

PKGNAME=		apostrophe-${GH_TAGNAME:S/v//}

CATEGORIES=		editors

# GPLv3+
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python

BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			textproc/gspell \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-pypandoc${MODPY_FLAVOR} \
			www/webkitgtk4 \
			x11/gtk+3 \
			x11/gtk+3,-guic \
			x11/libhandy

LIB_DEPENDS=		www/sassc \
			x11/libhandy

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${DESTDIR}${MODPY_SITEPKG}/apostrophe/

.include <bsd.port.mk>
