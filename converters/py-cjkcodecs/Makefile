# $OpenBSD: Makefile,v 1.7 2006/06/03 09:25:40 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Python unicode codecs for Chinese, Japanese and Korean"

DISTNAME=	cjkcodecs-1.1.1
PKGNAME=	py-${DISTNAME}p0
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
