# $OpenBSD: Makefile,v 1.4 2004/01/29 17:13:37 sturm Exp $

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

MODULES=	python

.include <bsd.port.mk>
