# $OpenBSD: Makefile,v 1.27 2014/03/13 17:33:27 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	fast, powerful, and language-neutral HTML template system
COMMENT-perl=	perl bindings for clearsilver
COMMENT-python=	python bindings for clearsilver

V=		0.10.4
DISTNAME=	clearsilver-${V}
EPOCH=		0
REVISION=	9

PKGNAME-main=	${DISTNAME}
PKGNAME-perl=	clearsilver-perl-${V}
PKGNAME-python=	clearsilver-python-${V}

CATEGORIES=	www net

HOMEPAGE=       http://www.clearsilver.net/
MASTER_SITES=   ${HOMEPAGE}/downloads/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# Apache 1
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		www/apache-httpd-openbsd

MULTI_PACKAGES=	-main -perl -python
MODULES=	lang/python

WANTLIB-main=	c pthread z
RUN_DEPENDS-main=

WANTLIB-perl=	pthread z
RUN_DEPENDS-perl= ${PKGPATH} 

WANTLIB-python=	${MODPY_WANTLIB} pthread z
RUN_DEPENDS-python= ${MODPY_RUN_DEPENDS} ${PKGPATH}

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-csharp \
		--disable-java \
		--disable-ruby \
		--with-apache=${LOCALBASE} \
		--with-python=${MODPY_BIN} \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@perl -pi -e 's|%%WRKSRC%%|${WRKSRC}|g' ${WRKSRC}/python/setup.py

do-test:
	@cd ${WRKSRC}/perl && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
