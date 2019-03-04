# $OpenBSD: Makefile,v 1.10 2019/03/04 12:51:16 chrisz Exp $

COMMENT =		OCaml source-based package manager

CATEGORIES =		sysutils devel

# opam version
V =			2.0.3
# opam file format version
OFFV =			2.0.0
MCSS =			1.1+9
#GH_ACCOUNT =		ocaml
GH_PROJECT =		opam
#GH_TAGNAME =		${V}
DISTNAME =		${GH_PROJECT}-${V}

DISTFILES +=		opam-${V}.tar.gz:0
MASTER_SITES0 =		https://github.com/ocaml/opam/archive/${V}/
DISTFILES +=		opam-file-format-${OFFV}.tar.gz:1
MASTER_SITES1 =		https://github.com/ocaml/opam-file-format/archive/${OFFV}/
DISTFILES +=		ocaml-mccs-${MCSS}.tar.gz:2
MASTER_SITES2 =		https://github.com/AltGr/ocaml-mccs/archive/${MCSS}/

PKGNAME =		opam-${V}

HOMEPAGE =		https://opam.ocaml.org/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

#MODULES =		lang/ocaml

BUILD_DEPENDS =		lang/ocaml \
			devel/dune \
			sysutils/findlib \
			devel/ocaml-cppo \
			devel/cudf,-ocaml>=0.7 \
			devel/ocaml-cmdliner>=0.9.8 \
			devel/ocaml-dose>=5 \
			devel/ocaml-graph \
			devel/ocaml-re>=1.5.0 \
			net/curl # TODO: remove this dep and patch build system

RUN_DEPENDS =		archivers/unzip \
			archivers/bzip2 \
			archivers/gtar \
			devel/gpatch \
			devel/gmake \
			net/curl

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

ALL_TARGET =		lib-ext all man #doc requires odoc
INSTALL_TARGET =	install
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam


pre-patch:
	ln -s	${FULLDISTDIR}/opam-file-format-${OFFV}.tar.gz \
		${WRKSRC}/src_ext/opam-file-format.tar.gz
	ln -s	${FULLDISTDIR}/ocaml-mccs-${MCSS}.tar.gz \
		${WRKSRC}/src_ext/mccs.tar.gz
	touch	${WRKSRC}/src_ext/{mccs,opam-file-format}.{download,pkgdownload}

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
