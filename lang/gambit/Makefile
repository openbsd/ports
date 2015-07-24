# $OpenBSD: Makefile,v 1.18 2015/07/24 23:43:17 juanfra Exp $

SHARED_ONLY=	Yes

COMMENT=	complete, efficient and reliable implementation of Scheme

V=		4.7.7
DISTNAME=	gambc-v${V:S/./_/g}
PKGNAME=	gambit-$V
API_V=		${V:R:S/./0/}00${V:E}
SUBST_VARS+=	API_V

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

post-install:
.for l in gambc gambcgsc gambcgsi
	cd ${PREFIX}/lib/ && ln -s gambit-c/lib$l.so
.endfor

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${TEST_ENV} ${MAKE_PROGRAM} \
		${TEST_FLAGS} -f makefile ${TEST_TARGET}

# "virtual memory exhausted: Cannot allocate memory" (in a system with 2GB RAM)
.if ${MACHINE_ARCH} == "hppa"
CFLAGS += -O0
.endif

.include <bsd.port.mk>
