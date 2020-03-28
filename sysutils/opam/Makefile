# $OpenBSD: Makefile,v 1.18 2020/03/28 17:56:44 sthen Exp $

COMMENT =		OCaml source-based package manager

CATEGORIES =		sysutils devel

V =			2.0.5
REVISION =		1
PKGNAME =		opam-${V}
DISTNAME =		opam-full-${V}

MASTER_SITES =		https://github.com/ocaml/opam/releases/download/${V}/

HOMEPAGE =		https://opam.ocaml.org/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

BUILD_DEPENDS =		lang/ocaml \
			sysutils/findlib \
			devel/dune \
			devel/ocaml-cppo \
			archivers/bzip2

RUN_DEPENDS =		archivers/unzip \
			archivers/bzip2 \
			archivers/gtar \
			devel/gpatch \
			devel/gmake \
			net/curl

USE_GMAKE =		Yes

CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"
CONFIGURE_STYLE =	gnu

ALL_TARGET =		lib-ext all man #doc requires odoc
INSTALL_TARGET =	install
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam

post-install:
	mv	${PREFIX}/doc/opam-installer \
		${PREFIX}/share/doc/
	rm -R	${PREFIX}/lib/opam-installer
	${INSTALL_DATA_DIR} ${docdir}
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md} \
		${WRKSRC}/doc/design/* \
		${docdir}/
	${INSTALL_DATA_DIR} ${docdir}/pages
	${INSTALL_DATA} ${WRKSRC}/doc/pages/*.md ${docdir}/pages

.include <bsd.port.mk>
