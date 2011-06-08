# $OpenBSD: Makefile,v 1.15 2011/06/08 17:32:05 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Python unicode codecs for Chinese, Japanese and Korean

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}
REVISION =	5
CATEGORIES=	converters

HOMEPAGE=	http://cjkpython.berlios.de/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=cjkpython/}

NO_REGRESS=	Yes

MODULES=	lang/python

.include <bsd.port.mk>
