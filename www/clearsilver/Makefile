# $OpenBSD: Makefile,v 1.6 2005/11/24 17:56:19 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast, powerful, and language-neutral HTML template system"

DISTNAME=	clearsilver-0.9.14
PKGNAME=	${DISTNAME}p4
CATEGORIES=	www net

HOMEPAGE=       http://www.clearsilver.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# Apache 1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c z

MASTER_SITES=   ${HOMEPAGE}/downloads/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-csharp \
		--disable-java \
		--disable-ruby

FLAVORS+=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
MODPY_VERSION?=	2.3
CONFIGURE_ARGS+=	--with-python=${LOCALBASE}/bin/python${MODPY_VERSION}
BUILD_DEPENDS+=		:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION}
RUN_DEPENDS+=		:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION}
SUBST_VARS=		MODPY_VERSION
.else
CONFIGURE_ARGS+=	--disable-python
.endif

pre-configure:
	@perl -pi -e 's|%%WRKSRC%%|${WRKSRC}|g' ${WRKSRC}/python/setup.py

do-regress:
	@cd ${WRKSRC}/perl && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
