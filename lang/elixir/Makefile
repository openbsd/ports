# $OpenBSD: Makefile,v 1.3 2013/03/11 11:20:27 espie Exp $

COMMENT=		modern approach to programming for the Erlang VM

V=			0.5.0
DISTNAME=		v${V}
PKGNAME=		elixir-${V}
CATEGORIES=		lang

HOMEPAGE=		http://elixir-lang.org/

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/downloads/elixir-lang/elixir/
EXTRACT_SUFX=		.zip
DIST_SUBDIR=		elixir

BUILD_DEPENDS=		devel/rebar \
			lang/erlang
RUN_DEPENDS=		lang/erlang

ALL_TARGET=		compile
USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}
SUBST_VARS+=		V

TEST_TARGET=		test

LIB_DIR=		${PREFIX}/lib/erlang/lib/elixir-lang-${V}/

# Remove pre-compiled files.
post-extract:
	cd ${WRKSRC} && ${MAKE_PROGRAM} clean

do-install:
.for s in elixir elixirc iex
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$s ${PREFIX}/bin/
.endfor
	${INSTALL_DATA_DIR} ${LIB_DIR}
	cd ${WRKSRC}/ebin/ && umask 022 && pax -rw . ${LIB_DIR}


.include <bsd.port.mk>