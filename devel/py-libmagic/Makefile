# $OpenBSD: Makefile,v 1.11 2015/09/17 13:30:23 sthen Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.2
V=		5.25
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
