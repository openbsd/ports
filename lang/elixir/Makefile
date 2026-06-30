COMMENT=		functional language for building scalable applications

V=			1.20.2
DIST_TUPLE=		github elixir-lang elixir v${V} .

CATEGORIES=		lang
MAINTAINER=		Volker Schlecht <volker@openbsd.org>

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
