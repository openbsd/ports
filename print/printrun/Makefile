BROKEN=		needs love with wxWidgets>=3.2
COMMENT =		3D printing host suite

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
# 2.0 release candidates are available which should work with Python 3.x,
# but they want py-wxWidgets 4.x.

MODPY_EGG_VERSION =	1.6.0
DISTNAME =		printrun-${MODPY_EGG_VERSION}

GH_ACCOUNT=	kliment
GH_PROJECT=	Printrun
GH_TAGNAME=	${DISTNAME}
EPOCH=		0
REVISION=	3

CATEGORIES=	print

HOMEPAGE=	https://www.pronterface.com/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject \
		devel/py-serial \
		math/py2-numpy \
		sysutils/py-psutil \
		textproc/py-lxml \
		x11/py-pyglet \
		x11/py-wxPython

# requires py3 support
#RUN_DEPENDS +=	x11/dbus-python${MODPY_FLAVOR}

BUILD_DEPENDS=	devel/py-serial \
		lang/cython

SUBST_VARS+=	LOCALBASE

pre-configure:
	${SUBST_CMD} ${WRKDIST}/*.desktop
	cd ${WRKDIST} && \
	for x in pronsole.py pronterface.py plater.py printcore.py; do \
		mv $$x $${x%.py}; \
	done

.include <bsd.port.mk>
