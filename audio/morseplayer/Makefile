COMMENT=		morse player

GH_ACCOUNT=		wrigjl
GH_PROJECT=		morseplayer
GH_COMMIT=		48f3d0bb07f94acc0328bee932e96c92a56dd133

DISTNAME=		morseplayer-1.4
REVISION=		1
CATEGORIES=		audio

HOMEPAGE=		https://github.com/wrigjl/morseplayer

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m sndio

MAKE_FLAGS+=		LDADD="-lsndio -lm"

FAKE_FLAGS=		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

NO_TEST=		Yes

.include <bsd.port.mk>
