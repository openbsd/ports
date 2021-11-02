# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:54 sthen Exp $

COMMENT =		GUI tool to rearrange and modify PDF files

MODPY_EGG_VERSION =	1.7.1
GH_ACCOUNT =		pdfarranger
GH_PROJECT =		pdfarranger
GH_TAGNAME =		${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		print

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			textproc/intltool

MODPY_SETUPTOOLS =	Yes

# Tests write to HOME
PORTHOME =		${WRKDIR}

BUILD_DEPENDS =		devel/py-distutils-extra${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR}
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/img2pdf \
			print/poppler \
			print/py-pikepdf${MODPY_FLAVOR} \
			x11/gtk+3 \
			x11/gtk+3,-guic

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
