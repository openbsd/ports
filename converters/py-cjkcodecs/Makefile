# $OpenBSD: Makefile,v 1.18 2013/03/11 01:30:28 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	7
CATEGORIES=	converters

HOMEPAGE=	http://cjkpython.berlios.de/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=cjkpython/}

NO_TEST=	Yes

MODULES=	lang/python
WANTLIB=	${MODPY_WANTLIB}

.include <bsd.port.mk>
