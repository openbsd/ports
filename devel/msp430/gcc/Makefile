# $OpenBSD: Makefile,v 1.2 2010/12/13 22:22:15 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

V=			4.4.4
DISTNAME=		gcc-$V
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(V)/}
PATCHFILES=		gcc-${V}.patch:0

DISTFILES=		gcc-core-${V}${EXTRACT_SUFX} \
			gcc-g++-${V}${EXTRACT_SUFX} \
			${TARGET}-gcc.tar.gz:0

WANTLIB +=		c gmp mpfr

BUILD_DEPENDS=		devel/msp430/binutils
LIB_DEPENDS=            devel/gmp>=4.2 \
                        devel/mpfr

NO_REGRESS=		Yes

LANGS=			c,c++

SEPARATE_BUILD= 	concurrent

CONFIGURE_ARGS+= 	--enable-languages=${LANGS} 	\
			--enable-cpp			\
			--with-gmp=${LOCALBASE}		\
			--with-mpfr=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Move the mspgcc4 config files into place.
post-extract:
	cp -r ${WRKDIR}/gcc/ ${WRKSRC}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${TARGET}/${VERSION}/

.include <bsd.port.mk>
