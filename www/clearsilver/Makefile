# $OpenBSD: Makefile,v 1.3 2005/07/23 17:08:13 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast, powerful, and language-neutral HTML template system"

DISTNAME=	clearsilver-0.9.14
PKGNAME=	${DISTNAME}p1
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
CONFIGURE_ARGS+=	--with-python=${LOCALBASE}/bin/python
BUILD_DEPENDS+=		:python-2.3*:lang/python/2.3
RUN_DEPENDS+=		:python-2.3*:lang/python/2.3
.else
CONFIGURE_ARGS+=	--disable-python
.endif

pre-configure:
	@perl -pi -e 's|%%WRKSRC%%|${WRKSRC}|g' ${WRKSRC}/python/setup.py

do-regress:
	@cd ${WRKSRC}/perl && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
