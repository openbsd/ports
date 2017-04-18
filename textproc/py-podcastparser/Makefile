# $OpenBSD: Makefile,v 1.1.1.1 2017/04/18 02:13:26 danj Exp $

COMMENT=	simple, fast and efficient podcast parser

MODPY_EGG_VERSION=	0.6.1
DISTNAME=	podcastparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	http://gpodder.org/podcastparser/

MAINTAINER=	Tim Meunier <trondd@kagu-tsuchi.com>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

BUILD_DEPENDS=	textproc/py-sphinx

TEST_DEPENDS=	devel/py-nose \
		devel/py-coverage

MAKE_FILE=	makefile
MAKE_ENV=	PYTHON=${MODPY_BIN}

post-build:
	cd ${WRKSRC}/doc && ${MAKE_ENV} ${MAKE_PROGRAM} man

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/_build/man/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
