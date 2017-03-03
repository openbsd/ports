# $OpenBSD: Makefile,v 1.7 2017/03/03 19:57:04 jca Exp $

COMMENT=		curses / ncurses bindings for OCaml

DISTNAME=		ocaml-curses-1.0.3
REVISION=		3
CATEGORIES=		devel

HOMEPAGE=		http://www.nongnu.org/ocaml-tmk/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		http://download.savannah.gnu.org/releases/ocaml-tmk/

WANTLIB += ncurses

MODULES=		lang/ocaml

BUILD_DEPENDS=		sysutils/findlib

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

TEST_TARGET=		test

ALL_TARGET =		htdoc all

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
.endif

SUBST_VARS +=		CC

pre-configure:
	${SUBST_CMD} ${WRKSRC}/curses.ml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-curses/html
	${INSTALL_DATA} ${WRKDIST}/doc/curses/html/* \
		${PREFIX}/share/doc/ocaml-curses/html/
	${INSTALL_DATA} ${WRKDIST}/CHANGES \
		${PREFIX}/share/doc/ocaml-curses/

.include <bsd.port.mk>
