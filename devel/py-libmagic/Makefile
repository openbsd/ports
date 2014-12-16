# $OpenBSD: Makefile,v 1.8 2014/12/16 10:57:51 sthen Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.2
V=		5.21
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

MODULES=	lang/python
WRKSRC=		${WRKDIST}/python

.include <bsd.port.mk>
