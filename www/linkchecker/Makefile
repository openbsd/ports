# $OpenBSD: Makefile,v 1.40 2013/10/02 19:30:38 jasper Exp $

COMMENT=	checks HTML documents for broken links

MODPY_EGG_VERSION=8.4
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
