# $OpenBSD: Makefile,v 1.3 2019/03/04 12:51:12 chrisz Exp $

COMMENT =		OCaml build system

CATEGORIES =		devel

GH_ACCOUNT =		ocaml
GH_PROJECT =		dune
GH_TAGNAME =		1.7.2

HOMEPAGE =		https://github.com/ocaml/dune

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

CONFIGURE_STYLE =	simple

USE_GMAKE =		Yes
MAKE_FLAGS =		DUNE_FLAGS="--display verbose -j ${MAKE_JOBS}"
ALL_TARGET =		release
INSTALL_TARGET =	install

idir =			${WRKSRC}/_boot/install/default
docdir =		${PREFIX}/share/doc/dune

.include <bsd.port.arch.mk>

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dune
	${INSTALL_DATA} \
		${idir}/doc/dune/{CHANGES,README,LICENSE}.md \
		${PREFIX}/share/doc/dune
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} \
		${idir}/share/emacs/site-lisp/* \
		${PREFIX}/share/emacs/site-lisp/
	${INSTALL_MAN} ${idir}/man/man1/* ${PREFIX}/man/man1/
	${INSTALL_MAN} ${idir}/man/man5/* ${PREFIX}/man/man5/
.if ${PROPERTIES:Mocaml_native}
	${INSTALL_PROGRAM} ${idir}/bin/* ${PREFIX}/bin/
.else
	${INSTALL_SCRIPT} ${idir}/bin/* ${PREFIX}/bin/
.endif

.include <bsd.port.mk>
