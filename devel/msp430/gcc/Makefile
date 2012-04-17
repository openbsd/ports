# $OpenBSD: Makefile,v 1.18 2012/04/17 12:20:45 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

VERSION=		4.6.3
R=			20120406
DISTNAME=		gcc-${VERSION}

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}
PATCHFILES=		msp430-gcc-${VERSION}-${R}.patch:0

DISTFILES=		gcc-core-${VERSION}${EXTRACT_SUFX} \
			gcc-g++-${VERSION}${EXTRACT_SUFX}

WANTLIB +=		c gmp mpc mpfr

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/msp430/binutils>=2.21.1a
LIB_DEPENDS=            devel/libmpc

NO_REGRESS=		Yes

LANGS=			c,c++

SEPARATE_BUILD= 	Yes

SUBST_VARS+=		VERSION

CONFIGURE_ARGS+= 	--enable-languages=${LANGS} 	\
			--enable-cpp			\
			--with-gmp=${LOCALBASE}		\
			--with-mpfr=${LOCALBASE}	\
			--with-mpc=${LOCALBASE}		\
			--disable-lto
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${TARGET}/${VERSION}/

.include <bsd.port.mk>
