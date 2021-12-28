# $OpenBSD: Makefile,v 1.16 2021/12/28 09:17:51 sthen Exp $

COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_EGG_VERSION=	2.8
DISTNAME=	visidata-${MODPY_EGG_VERSION}

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# tests are available but not included in the standard pypi download
NO_TEST=		Yes

.include <bsd.port.mk>
