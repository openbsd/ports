# $OpenBSD: Makefile,v 1.21 2015/01/21 06:13:46 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	10
CATEGORIES=	converters

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cjkpython.berlios/}

NO_TEST=	Yes

MODULES=	lang/python
WANTLIB=	pthread ${MODPY_WANTLIB}

.include <bsd.port.mk>
