# $OpenBSD: Makefile,v 1.6 2021/01/07 14:47:07 ajacoutot Exp $

COMMENT =		3D printing host suite

MODPY_EGG_VERSION =	1.6.0
DISTNAME =		printrun-${MODPY_EGG_VERSION}

GH_ACCOUNT=	kliment
GH_PROJECT=	Printrun
GH_TAGNAME=	${DISTNAME}
EPOCH=		0
REVISION=	0

CATEGORIES=	print

HOMEPAGE=	http://www.pronterface.com/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-gobject \
		devel/py-serial \
		math/py-numpy \
		sysutils/py-psutil \
		textproc/py-lxml \
		x11/dbus-python,-main \
		x11/py-pyglet \
		x11/py-wxPython \

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
