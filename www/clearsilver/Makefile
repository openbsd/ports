# $OpenBSD: Makefile,v 1.19 2010/10/19 08:02:53 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	fast, powerful, and language-neutral HTML template system

DISTNAME=	clearsilver-0.10.4
EPOCH=		0
REVISION=	3
CATEGORIES=	www net

HOMEPAGE=       http://www.clearsilver.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# Apache 1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c pthread z

MASTER_SITES=   ${HOMEPAGE}/downloads/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-csharp \
		--disable-java \
		--disable-ruby
USE_GROFF =	Yes

FLAVORS+=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
MODULES=		lang/python
CONFIGURE_ARGS+=	--with-python=${MODPY_BIN}
.else
CONFIGURE_ARGS+=	--disable-python
.endif

pre-configure:
	@perl -pi -e 's|%%WRKSRC%%|${WRKSRC}|g' ${WRKSRC}/python/setup.py

do-regress:
	@cd ${WRKSRC}/perl && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
