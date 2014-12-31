# $OpenBSD: Makefile,v 1.4 2014/12/31 13:18:34 jasper Exp $

COMMENT=		modern approach to programming for the Erlang VM

V=			0.12.5
GH_ACCOUNT=		elixir-lang
GH_PROJECT=		elixir
GH_TAGNAME=		v$V
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		lang

HOMEPAGE=		http://elixir-lang.org/

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		devel/rebar \
			lang/erlang>=16b.03v0
RUN_DEPENDS=		lang/erlang>=16b.03v0

ALL_TARGET=		# empty
USE_GMAKE=		Yes

TEST_TARGET=		test

.include <bsd.port.mk>
