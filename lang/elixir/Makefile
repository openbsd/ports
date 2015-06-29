# $OpenBSD: Makefile,v 1.9 2015/06/29 18:38:50 jasper Exp $

COMMENT=		functional language for building scalable applications

V=			1.0.5
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
MODERL_VERSION=		18

ALL_TARGET=		# empty

TEST_TARGET=		test

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/elixir

.include <bsd.port.mk>
