# $OpenBSD: Makefile,v 1.39 2013/03/11 11:44:42 espie Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=8.3
DISTNAME=	LinkChecker-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L}

CATEGORIES=    	www

HOMEPAGE=	http://wummel.github.com/linkchecker/

MAINTAINER=	Amit Kulkarni <amitkulz@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/downloads/wummel/linkchecker/ \
		http://distfiles.nl/

EXTRACT_SUFX=	.tar.xz

MODULES=	lang/python

WANTLIB+=	${MODPY_WANTLIB} pthread

RUN_DEPENDS=	devel/desktop-file-utils \
		net/py-dnspython

NO_TEST=	Yes

.include <bsd.port.mk>
