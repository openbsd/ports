# $OpenBSD: Makefile,v 1.7 2011/09/05 08:25:48 jasper Exp $

COMMENT=		GNU Compiler Collection for msp430

VERSION=		4.5.3
R=			20110706
DISTNAME=		gcc-${VERSION}
REVISION=		0
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}
PATCHFILES=		msp430-gcc-${VERSION}-${R}.patch:0 \
			msp430-gcc-4.5.3-20110706-sf3394176.patch:1 \
			msp430-gcc-4.5.3-20110706-sf3396639.patch:1 \
			msp430-gcc-4.5.3-20110706-sf3390964.patch:1 \
			msp430-gcc-4.5.3-20110706-sf3370978.patch:1

DISTFILES=		gcc-core-${VERSION}${EXTRACT_SUFX} \
			gcc-g++-${VERSION}${EXTRACT_SUFX}

WANTLIB +=		c gmp mpc mpfr

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/msp430/binutils>=2.21.1
LIB_DEPENDS=            devel/libmpc

NO_REGRESS=		Yes

LANGS=			c,c++

SEPARATE_BUILD= 	concurrent

SUBST_VARS+=		VERSION

CONFIGURE_ARGS+= 	--enable-languages=${LANGS} 	\
			--enable-cpp			\
			--with-gmp=${LOCALBASE}		\
			--with-mpfr=${LOCALBASE}	\
			--with-mpc=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${TARGET}/${VERSION}/

.include <bsd.port.mk>
