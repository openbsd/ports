# $OpenBSD: Makefile,v 1.2 2015/09/29 09:02:55 edd Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_COMMIT=		6fbb81559609c12e7c64ae5dce7d102a414a7514

MODPY_EGG_VERSION=	2015.2.3
REVISION =		0
DISTNAME=		${GH_PROJECT}-2015.02.03

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/jrfonseca/gprof2dot

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
BUILD_DEPENDS +=	devel/py-setuptools>=18.2v0


RUN_DEPENDS=		math/graphviz \
			devel/py-setuptools>=18.2v0

.include <bsd.port.mk>
