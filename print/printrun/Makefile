COMMENT=	3D printing host suite

MODPY_DISTV=	2.0.1
DISTNAME=	printrun-${MODPY_DISTV}
REVISION=	1

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
		devel/py-appdirs \
		devel/py-cffi \
		devel/py-cairocffi \
		devel/py-serial \
		math/py-numpy \
		sysutils/py-psutil \
		textproc/py-lxml \
		x11/dbus-python \
		x11/py-pyglet \
		x11/py-wxPython

BUILD_DEPENDS=	devel/py-serial \
		lang/cython

pre-configure:
	${SUBST_CMD} ${WRKDIST}/*.desktop
	cd ${WRKDIST} && \
	for x in pronsole.py pronterface.py plater.py printcore.py; do \
		mv $$x $${x%.py}; \
	done

.include <bsd.port.mk>
