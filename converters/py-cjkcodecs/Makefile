# $OpenBSD: Makefile,v 1.5 2004/08/04 19:46:14 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python unicode codecs for Chinese, Japanese and Korean"

DISTNAME=	cjkcodecs-1.0.3
PKGNAME=	py-${DISTNAME}
CATEGORIES=	converters

HOMEPAGE=	http://cjkpython.berlios.de/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.berlios.de/cjkpython/

NO_REGRESS=	Yes

MODULES=	lang/python

.include <bsd.port.mk>
