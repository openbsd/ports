# $OpenBSD: Makefile,v 1.2 2005/06/04 11:56:50 sturm Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast, powerful, and language-neutral HTML template system"

DISTNAME=	clearsilver-0.9.14
PKGNAME=	${DISTNAME}p0
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
		--disable-python \
		--disable-ruby

do-regress:
	@cd ${WRKSRC}/perl && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
