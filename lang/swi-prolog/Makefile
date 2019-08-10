# $OpenBSD: Makefile,v 1.82 2019/08/10 19:41:07 naddy Exp $

BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-powerpc =	pl-modul.c:1497: internal compiler error: in extract_insn, at recog.c:2077
BROKEN-sparc64 =	infinite loop or aborts during build

COMMENT =		Prolog for the real world

V =			7.6.0
REVISION =		5
DISTNAME =		swipl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		swipl	0.0 # 7.5

HOMEPAGE =		http://www.swi-prolog.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xt archive c crypto curses
WANTLIB += db edit execinfo fontconfig freetype gmp iodbc jpeg m
WANTLIB += ossp-uuid pcre pthread readline ssl z

MASTER_SITES =		${HOMEPAGE}download/stable/src/ \
			https://distfiles.nl/


# The reccommended way to build is using build.templ. We mimick this as best
# we can and use the top-level configure script.
CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/packages/clib \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/ \
				${WRKSRC}/packages/xpce/src \
				${WRKSRC}/src

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib
CONFIGURE_ENV +=	CIFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}'
MAKE_ENV =		${CONFIGURE_ENV}

CONFIGURE_ARGS +=	--enable-shared \
			--with-world

USE_GMAKE =		Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
BUILD_DEPENDS +=	shells/bash
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo \
			graphics/jpeg \
			devel/uuid \
			databases/db/v4 \
			archivers/libarchive \
			databases/iodbc \
			devel/pcre

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS +=		V BOOT FULLARCH

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile.in

post-install:
	cd ${PREFIX}/lib && \
		ln -sf swipl-$V/lib/${FULLARCH}/libswipl.so.${LIBswipl_VERSION}
	mv ${PREFIX}/lib/swipl-${V}/doc ${PREFIX}/share/doc/swipl

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
BOOT =	boot64
.else
BOOT =	boot32
.endif

.include <bsd.port.mk>
