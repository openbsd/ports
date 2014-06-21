# $OpenBSD: Makefile,v 1.19 2014/06/21 11:26:30 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	8
CATEGORIES=	converters

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

NO_TEST=	Yes

MODULES=	lang/python
WANTLIB=	${MODPY_WANTLIB}

.include <bsd.port.mk>
