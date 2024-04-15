COMMENT=	number theory-oriented computer algebra system

V=		2.15.5
DISTNAME=	pari-$V
CATEGORIES=	math
REVISION=	1

SHARED_LIBS +=		pari-gmp		0.0	# 2.15.4

HOMEPAGE=	https://pari.math.u-bordeaux.fr/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=		X11 c gmp m readline

SITES=			https://pari.math.u-bordeaux.fr/pub/pari/unix/ \
			https://pari.math.u-bordeaux.fr/pub/pari/OLD/${V:R}/

BUILD_DEPENDS=		print/texlive/base
LIB_DEPENDS=		devel/gmp

USE_GMAKE=		Yes

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}" \
			LIBpari_gmp_VERSION="${LIBpari-gmp_VERSION}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--mandir=${PREFIX}/man/man1 \
			--prefix=${PREFIX} \
			--with-gmp=${PREFIX}

DEBUG_PACKAGES = ${BUILD_PACKAGES}

TEST_TARGET=		dobench

.if ${MACHINE_ARCH} == i386
CFLAGS+=		-Wl,-znotext
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/gphelp.in

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
