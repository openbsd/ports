# $OpenBSD: Makefile,v 1.11 2019/03/12 05:36:06 chrisz Exp $

COMMENT =		OCaml source-based package manager

CATEGORIES =		sysutils devel

V =			2.0.3
REVISION =		0
PKGNAME =		opam-${V}
DISTNAME =		opam-full-${V}

MASTER_SITES =		https://github.com/ocaml/opam/releases/download/${V}/

HOMEPAGE =		https://opam.ocaml.org/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

#MODULES =		lang/ocaml

BUILD_DEPENDS =		lang/ocaml

RUN_DEPENDS =		archivers/unzip \
			archivers/bzip2 \
			archivers/gtar \
			devel/gpatch \
			devel/gmake \
			net/curl

USE_GMAKE =		Yes

CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			CC=cc
CONFIGURE_STYLE =	gnu autoconf no-autoheader
AUTOCONF_VERSION =	2.69

ALL_TARGET =		lib-ext all man #doc requires odoc
INSTALL_TARGET =	install
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam

#pre-configure:
#	cd ${WRKSRC} && env ${CONFIGURE_ENV} ${GMAKE} compiler

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
