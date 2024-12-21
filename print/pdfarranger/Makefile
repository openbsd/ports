COMMENT=	GUI tool to rearrange and modify PDF files

MODPY_DISTV=	1.11.1
GH_ACCOUNT=	pdfarranger
GH_PROJECT=	pdfarranger
GH_TAGNAME=	${MODPY_DISTV}
REVISION=	0

CATEGORIES=	print

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		textproc/intltool
MODPY_PYBUILD=	setuptools

# Tests write to HOME
PORTHOME=	${WRKDIR}

BUILD_DEPENDS=	devel/py-distutils-extra \
		print/py-pikepdf
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-dateutil \
		devel/py-gobject3 \
		graphics/img2pdf \
		print/poppler \
		print/py-pikepdf \
		sysutils/py-packaging \
		x11/gtk+3 \
		x11/gtk+4,-guic

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
