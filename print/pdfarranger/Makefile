# $OpenBSD: Makefile,v 1.1.1.1 2020/11/02 19:52:43 jca Exp $

COMMENT =		GUI tool to rearrange and modify PDF files

MODPY_EGG_VERSION =	1.6.2
GH_ACCOUNT =		pdfarranger
GH_PROJECT =		pdfarranger
GH_TAGNAME =		${MODPY_EGG_VERSION}

CATEGORIES =		print

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			textproc/intltool

MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-distutils-extra${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR}
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR} \
			x11/gtk+3 \
			x11/gtk+3,-guic

NO_TEST =		Yes

.include <bsd.port.mk>
