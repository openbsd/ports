# $OpenBSD: Makefile,v 1.2 2015/09/17 17:18:34 jca Exp $

COMMENT =	OCaml parallel map primitive for multicores
CATEGORIES =	devel

V =		1.0-rc6
REVISION =	0
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

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mocaml_native_dynlink}
MAKE_FLAGS+=	CMXSLIBS=
.endif

FAKE_FLAGS =	DESTDIR=${WRKINST}${TRUEPREFIX}

TEST_TARGET =	tests
TEST_DEPENDS =	${BASE_PKGPATH}

.include <bsd.port.mk>
