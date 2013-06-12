# $OpenBSD: Makefile,v 1.7 2013/06/12 12:57:20 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	complete, efficient and reliable implementation of Scheme
BROKEN-hppa =	cc: Internal error: Illegal instruction

V=		4.6.8
DISTNAME=	gambc-v${V:S/./_/g}
PKGNAME=	gambit-$V

CATEGORIES=	lang

HOMEPAGE=	http://dynamo.iro.umontreal.ca/~gambit/

# LGPLv2.1 / Apachev2.0
PERMIT_PACKAGE_CDROM=	Yes

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

# https://github.com/feeley/gambit/pull/29
CONFIGURE_ARGS+=ac_cv_func_get_fpc_csr=no

MAKE_FILE=	${WRKSRC}/makefile

# Untill we figure out how to make it play nice with a staged directory.
NO_TEST=	Yes

post-install:
.for l in gambc gambcgsc gambcgsi
	cd ${PREFIX}/lib/ && ln -s gambit-c/lib$l.so
.endfor

.include <bsd.port.mk>
