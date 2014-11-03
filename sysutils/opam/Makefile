# $OpenBSD: Makefile,v 1.2 2014/11/03 08:13:42 jasper Exp $

MULTI_PACKAGES =	-main -lib

COMMENT-main =		OCaml source-based package manager
COMMENT-lib =		OPAM library

CATEGORIES =		sysutils devel

V =			1.2.0
GH_ACCOUNT =		ocaml
GH_PROJECT =		opam
GH_TAGNAME =		${V}
DISTNAME =		${GH_PROJECT}-${V}
REVISION =		0

PKGNAME-main =		opam-${V}
PKGNAME-lib =		opam-lib-${V}

HOMEPAGE =		http://opam.ocamlpro.com/

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

# we don't use ocp-build (yet)
#MAKE_ENV =		OCP_HOME="${WRKDIR}"

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
