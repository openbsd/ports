# $OpenBSD: Makefile,v 1.7 2015/06/24 06:53:08 jasper Exp $

COMMENT=		functional language for building scalable applications

V=			1.0.4
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
MODERL_VERSION=		17

ALL_TARGET=		# empty

TEST_TARGET=		test

.include <bsd.port.mk>
