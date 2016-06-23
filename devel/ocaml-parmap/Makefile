# $OpenBSD: Makefile,v 1.5 2016/06/23 19:23:53 krw Exp $

COMMENT =	OCaml parallel map primitive for multicores
CATEGORIES =	devel

V =		1.0-rc7
NAME =		ocaml-parmap
DISTNAME =	ocaml-parmap-$V
DISTFILES =	${DISTNAME}{$V}.tar.gz
WRKDIST =	${WRKDIR}/parmap-$V
PKGNAME =	ocaml-parmap-${V:S/-//}
REVISION =	1
MASTER_SITES =	https://github.com/rdicosmo/parmap/archive/

HOMEPAGE =	https://github.com/rdicosmo/parmap

# LGPLv2+ + static linking exception
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml
BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =	DESTDIR=${WRKINST}${TRUEPREFIX}

TEST_TARGET =	tests
TEST_DEPENDS =	${BASE_PKGPATH}

.include <bsd.port.mk>
