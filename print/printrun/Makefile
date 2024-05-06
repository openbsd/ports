COMMENT=	3D printing host suite

MODPY_EGG_VERSION=	2.0.1
DISTNAME=	printrun-${MODPY_EGG_VERSION}
REVISION=	0

GH_ACCOUNT=	kliment
GH_PROJECT=	Printrun
GH_TAGNAME=	${DISTNAME}
EPOCH=		0

CATEGORIES=	print

HOMEPAGE=	https://www.pronterface.com/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-cairocffi${MODPY_FLAVOR} \
		devel/py-serial${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/py-pyglet${MODPY_FLAVOR} \
		x11/py-wxPython${MODPY_FLAVOR}

BUILD_DEPENDS=	devel/py-serial${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/*.desktop
	cd ${WRKDIST} && \
	for x in pronsole.py pronterface.py plater.py printcore.py; do \
		mv $$x $${x%.py}; \
	done

.include <bsd.port.mk>
