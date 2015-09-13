# $OpenBSD: Makefile,v 1.1.1.1 2015/09/13 15:20:19 sthen Exp $

SHARED_ONLY =	Yes
ONLY_FOR_ARCHS = ${OCAML_NATIVE_ARCHS}

COMMENT =	OCaml parallel map primitive for multicores
CATEGORIES =	devel

V =		1.0-rc6
NAME =		ocaml-parmap
DISTNAME =	ocaml-parmap-$V
DISTFILES =	${DISTNAME}{$V}.tar.gz
WRKDIST =	${WRKDIR}/parmap-$V
PKGNAME =	ocaml-parmap-${V:S/-//}
MASTER_SITES =	https://github.com/rdicosmo/parmap/archive/

HOMEPAGE =	https://github.com/rdicosmo/parmap

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml
BUILD_DEPENDS =	sysutils/findlib
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

TEST_TARGET =	tests
TEST_DEPENDS =	${BASE_PKGPATH}

.include <bsd.port.mk>
