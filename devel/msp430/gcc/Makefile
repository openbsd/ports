# $OpenBSD: Makefile,v 1.22 2012/04/17 18:12:38 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

TOOL=			gcc
TOOL_V= 		4.6.3

GNU_TOOL=		Yes

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(TOOL_V)/}

DISTFILES=		gcc-core-${TOOL_V}${EXTRACT_SUFX} \
			gcc-g++-${TOOL_V}${EXTRACT_SUFX}

WANTLIB +=		c gmp mpc mpfr

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/msp430/binutils>=2.21.1a
LIB_DEPENDS=            devel/libmpc

LANGS=			c,c++

SUBST_VARS+=		TOOL_V

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
		${PREFIX}/lib/gcc/${TARGET}/${TOOL_V}/

.include <bsd.port.mk>
