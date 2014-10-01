# $OpenBSD: Makefile,v 1.20 2014/10/01 08:58:23 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	9
CATEGORIES=	converters

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

NO_TEST=	Yes

MODULES=	lang/python
WANTLIB=	pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
