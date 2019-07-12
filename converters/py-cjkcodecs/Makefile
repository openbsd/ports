# $OpenBSD: Makefile,v 1.23 2019/07/12 20:43:51 sthen Exp $

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	10
CATEGORIES=	converters

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

NO_TEST=	Yes

MODULES=	lang/python
WANTLIB=	pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
