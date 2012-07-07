# $OpenBSD: Makefile,v 1.2 2012/07/07 09:39:55 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	complete, efficient and reliable implementation of Scheme

V=		4.6.6
DISTNAME=	gambc-v${V:S/./_/g}
PKGNAME=	gambit-$V

CATEGORIES=	lang

HOMEPAGE=	http://dynamo.iro.umontreal.ca/~gambit/

# LGPLv2.1 / Apachev2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.iro.umontreal.ca/~gambit/download/gambit/v${V:R}/source/
EXTRACT_SUFX=	.tgz

WANTLIB += c m util

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cplusplus \
		${CONFIGURE_SHARED} \
		--disable-absolute-shared-libs \
		--docdir=${PREFIX}/share/doc/gambit-c/ \
		--includedir=${PREFIX}/include/gambit-c/ \
		--libdir=${PREFIX}/lib/gambit-c/

MAKE_FILE=	${WRKSRC}/makefile

# Untill we figure out how to make it play nice with a staged directory.
NO_REGRESS=	Yes

post-install:
.for l in gambc gambcgsc gambcgsi
	cd ${PREFIX}/lib/ && ln -s gambit-c/lib$l.so
.endfor

.include <bsd.port.mk>