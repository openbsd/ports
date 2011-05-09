# $OpenBSD: Makefile,v 1.5 2011/05/09 08:59:19 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

VERSION=		4.4.5
DISTNAME=		gcc-${VERSION}
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}
PATCHFILES=		gcc-${VERSION}.patch:0

DISTFILES=		gcc-core-${VERSION}${EXTRACT_SUFX} \
			gcc-g++-${VERSION}${EXTRACT_SUFX} \
			gcc-${VERSION}-config.tar.gz:0

WANTLIB +=		c gmp mpfr

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/msp430/binutils>=2.21
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
	cp -r ${WRKDIR}/gcc-${VERSION}-config/gcc/ ${WRKSRC}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${TARGET}/${VERSION}/

.include <bsd.port.mk>
