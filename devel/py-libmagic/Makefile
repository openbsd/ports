# $OpenBSD: Makefile,v 1.2 2013/12/12 17:59:35 nigel Exp $

COMMENT=	Python bindings to libmagic

MODPY_EGG_VERSION = 0.2
V=		5.15
DISTNAME=	file-${V}
PKGNAME=	py-libmagic-${V}
REVISION =	0

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
