# $OpenBSD: Makefile,v 1.3 2014/03/13 10:57:43 sthen Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.2
V=		5.17
DISTNAME=	file-${V}
PKGNAME=	py-libmagic-${V}

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/libmagic

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python
WRKSRC=		${WRKDIST}/python

.include <bsd.port.mk>
