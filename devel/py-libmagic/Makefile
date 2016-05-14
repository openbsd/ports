# $OpenBSD: Makefile,v 1.13 2016/05/14 13:23:26 sthen Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.3.0
V=		5.27
DISTNAME=	file-${V}
PKGNAME=	py-libmagic-${V}

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/libmagic
NO_TEST=	Yes

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS= Yes
MODULES=	lang/python
WRKSRC=		${WRKDIST}/python

.include <bsd.port.mk>
