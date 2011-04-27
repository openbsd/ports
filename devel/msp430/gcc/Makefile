# $OpenBSD: Makefile,v 1.3 2011/04/27 16:29:33 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

VERSION=		4.4.4
DISTNAME=		gcc-${VERSION}
PKGNAME=		${TARGET}-${DISTNAME}
REVISION=		0

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}
PATCHFILES=		gcc-${VERSION}.patch:0

DISTFILES=		gcc-core-${VERSION}${EXTRACT_SUFX} \
			gcc-g++-${VERSION}${EXTRACT_SUFX} \
			${TARGET}-gcc.tar.gz:0

WANTLIB +=		c gmp mpfr

BUILD_DEPENDS=		devel/msp430/binutils
LIB_DEPENDS=            devel/gmp>=4.2 \
                        devel/mpfr

NO_REGRESS=		Yes

LANGS=			c,c++

SEPARATE_BUILD= 	concurrent

SUBST_VARS+=		VERSION

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
