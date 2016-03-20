# $OpenBSD: Makefile,v 1.22 2016/03/20 16:12:22 naddy Exp $

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
