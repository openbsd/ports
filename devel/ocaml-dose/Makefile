# $OpenBSD: Makefile,v 1.9 2019/03/04 12:51:13 chrisz Exp $

COMMENT =		software repository analysis in OCaml
CATEGORIES =		devel

VERSION =		5.0.1
DISTNAME =		dose3-${VERSION}
PKGNAME =		ocaml-dose-${VERSION}

HOMEPAGE =		http://dose.gforge.inria.fr/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://gforge.inria.fr/frs/download.php/file/36063/

MODULES =		lang/ocaml

WANTLIB =		c m pthread
BUILD_DEPENDS =		devel/ocaml-cppo>=1.1.2 \
			sysutils/findlib \
			devel/ounit \
			devel/cudf,-ocaml \
			devel/ocaml-extlib>=1.7.0 \
			devel/ocaml-graph>=1.8.7 \
			devel/ocaml-ocamlbuild \
			devel/ocaml-re


USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-oUnit
FAKE_FLAGS =		${DESTDIRNAME}=${DESTDIR}${TRUEPREFIX}

#doc seems broken, needs texlive_texmf-full, graphviz and hevea
ALL_TARGET =		all


post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/manpages/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-dose3
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,CREDITS,README.architecture,TODO} \
		${PREFIX}/share/doc/ocaml-dose3/


.include <bsd.port.mk>
