# $OpenBSD: Makefile,v 1.17 2022/02/15 21:31:53 sdk Exp $

COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_EGG_VERSION=	2.8
DISTNAME=	visidata-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# only bin/visidata
RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR}

# tests are available but not included in the standard pypi download
NO_TEST=		Yes

.include <bsd.port.mk>
