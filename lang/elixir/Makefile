# $OpenBSD: Makefile,v 1.17 2016/05/04 06:44:58 jasper Exp $

COMMENT=		functional language for building scalable applications

V=			1.2.5
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
PORTHOME=		${WRKDIR}

MAKE_FLAGS=		PREFIX="${PREFIX}" \
			Q=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/elixir
	sed -i 's,share/man/man1,man/man1,g' ${WRKSRC}/Makefile

pre-install:
	-rm ${WRKSRC}/bin/*.{beforesubst,orig}

.include <bsd.port.mk>
