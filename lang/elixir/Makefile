# $OpenBSD: Makefile,v 1.47 2019/07/07 19:00:44 jasper Exp $

COMMENT=		functional language for building scalable applications

V=			1.9.0
GH_ACCOUNT=		elixir-lang
GH_PROJECT=		elixir
GH_TAGNAME=		v$V
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		lang

HOMEPAGE=		http://elixir-lang.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/erlang
MODERL_VERSION=		21

ALL_TARGET=		# empty

TEST_TARGET=		test
PORTHOME=		${WRKDIR}

MAKE_FLAGS=		PREFIX="${PREFIX}" \
			MAN_PREFIX="${PREFIX}/man" \
			Q=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/elixir

pre-install:
	-rm ${WRKSRC}/bin/*.{beforesubst,orig}

.include <bsd.port.mk>
