# $OpenBSD: Makefile,v 1.5 2015/05/28 06:54:46 ajacoutot Exp $

MULTI_PACKAGES =	-main -lib

COMMENT-main =		OCaml source-based package manager
COMMENT-lib =		OPAM library

CATEGORIES =		sysutils devel

V =			1.2.0
GH_ACCOUNT =		ocaml
GH_PROJECT =		opam
GH_TAGNAME =		${V}
DISTNAME =		${GH_PROJECT}-${V}
REVISION-main =		2
REVISION-lib =		3

PKGNAME-main =		opam-${V}
PKGNAME-lib =		opam-lib-${V}

HOMEPAGE =		https://opam.ocaml.org/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		c m

MODULES =		lang/ocaml
BUILD_DEPENDS =		devel/git \
			sysutils/findlib \
			devel/cudf,-ocaml \
			devel/ocaml-cmdliner \
			devel/ocaml-dose \
			devel/ocaml-graph \
			devel/ocaml-re \
			devel/ocaml-jsonm

RUN_DEPENDS =		lang/ocaml-camlp4 \
			net/rsync \
			archivers/unzip \
			devel/gmake

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

ALL_TARGET =		all html man
INSTALL_TARGET =	install libinstall
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam


post-install:
	${INSTALL_DATA_DIR} ${docdir}/{tutorials,api}
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md} \
		${WRKSRC}/doc/design/* \
		${docdir}/
	${INSTALL_DATA} ${WRKSRC}/doc/tutorials/*.html ${docdir}/tutorials
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${docdir}/api
	${INSTALL_DATA} ${WRKSRC}/doc/dev-manual/dev-manual.pdf ${docdir}/

.include <bsd.port.mk>
