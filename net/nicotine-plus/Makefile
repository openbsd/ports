COMMENT=	graphical client for the SoulSeek peer-to-peer system

MODPY_DISTV=	3.3.10
GH_ACCOUNT=	Nicotine-Plus
GH_PROJECT=	nicotine-plus
GH_TAGNAME=	${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://nicotine-plus.github.io/nicotine-plus/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	${MODPY_RUN_DEPENDS},-gdbm \
		devel/desktop-file-utils \
		devel/py-gobject3 \
		x11/gtk+4,-guic

.include <bsd.port.mk>
