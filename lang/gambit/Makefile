# $OpenBSD: Makefile,v 1.12 2014/10/26 14:22:05 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	complete, efficient and reliable implementation of Scheme

V=		4.7.3
DISTNAME=	gambc-v${V:S/./_/g}
PKGNAME=	gambit-$V

CATEGORIES=	lang

HOMEPAGE=	http://gambitscheme.org/

# LGPLv2.1 / Apachev2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.iro.umontreal.ca/~gambit/download/gambit/v${V:R}/source/
EXTRACT_SUFX=	.tgz

WANTLIB +=	c m util

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-cplusplus \
		--disable-absolute-shared-libs \
		--docdir=${PREFIX}/share/doc/gambit-c/ \
		--includedir=${PREFIX}/include/gambit-c/ \
		--libdir=${PREFIX}/lib/gambit-c/ \
		--enable-c-opt="${CFLAGS}"

MAKE_FILE=	${WRKSRC}/makefile

# Until we figure out how to make it play nice with a staged directory.
NO_TEST=	Yes

post-install:
.for l in gambc gambcgsc gambcgsi
	cd ${PREFIX}/lib/ && ln -s gambit-c/lib$l.so
.endfor

.include <bsd.port.mk>
