# $OpenBSD: Makefile,v 1.6 2019/03/04 12:51:14 chrisz Exp $

COMMENT =	regular expression library for OCaml
CATEGORIES =	devel

V =		1.8.0
GH_ACCOUNT =	ocaml
GH_PROJECT =	ocaml-re
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-${V}

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

#USE_GMAKE =		Yes
BUILD_DEPENDS =         devel/dune \
			devel/ounit


do-install:
	cd ${WRKSRC}/_build/install/default/lib && \
	  for dir in `find . -type d`; do \
	    ${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/$$dir; \
          done && \
	  for file in `find . -not -type d -and -not -iname \*.ml -and -not -iname \*dune\*` ; do \
	    ${INSTALL_DATA} $$file ${PREFIX}/lib/ocaml/$$file; \
	  done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-re
	${INSTALL_DATA} \
		${WRKSRC}/_build/install/default/doc/re/* \
		${PREFIX}/share/doc/ocaml-re/


.include <bsd.port.mk>
