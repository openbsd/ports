COMMENT=		functional language for building scalable applications

V=			1.16.3
GH_ACCOUNT=		elixir-lang
GH_PROJECT=		elixir
GH_TAGNAME=		v$V
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		lang
MAINTAINER=		Volker Schlecht <openbsd-ports@schlecht.dev>

HOMEPAGE=		https://elixir-lang.org/

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=		lang/erlang

ALL_TARGET=		# empty

TEST_TARGET=		test
PORTHOME=		${WRKDIR}

MAKE_FLAGS=		PREFIX="${PREFIX}" \
			MAN_PREFIX="${PREFIX}/man" \
			Q=""

CONFIGURE_STYLE=	None

# Needed because otherwise the bootstrapping step complains
MAKE_ENV+=		LC_ALL="en_US.UTF-8"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/elixir \
		${WRKSRC}/Makefile

pre-install:
	-rm ${WRKSRC}/bin/*{.beforesubst,${PATCHORIG}}

.include <bsd.port.mk>
