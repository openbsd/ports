# $OpenBSD: Makefile,v 1.13 2020/06/09 17:34:13 chrisz Exp $

COMMENT =	OCaml parallel map primitive for multicores
CATEGORIES =	devel

V =		1.0-rc10
REVISION =	2
NAME =		ocaml-parmap
DISTNAME =	ocaml-parmap-$V
DISTFILES =	${DISTNAME}{$V}.tar.gz
WRKDIST =	${WRKDIR}/parmap-$V
PKGNAME =	ocaml-parmap-${V:S/-//}
MASTER_SITES =	https://github.com/rdicosmo/parmap/archive/

HOMEPAGE =	https://github.com/rdicosmo/parmap

# LGPLv2+ + static linking exception
PERMIT_PACKAGE =		Yes

MODULES =	lang/ocaml
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =	DESTDIR=${WRKINST}${TRUEPREFIX}

TEST_TARGET =	tests
TEST_DEPENDS =	${BASE_PKGPATH}


.include <bsd.port.mk>
