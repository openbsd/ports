# $OpenBSD: Makefile,v 1.5 2014/06/03 11:34:24 rpointel Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.2
V=		5.17
DISTNAME=	file-${V}
PKGNAME=	py-libmagic-${V}

REVISION = 0

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
