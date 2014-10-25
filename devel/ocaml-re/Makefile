# $OpenBSD: Makefile,v 1.1.1.1 2014/10/25 16:59:17 chrisz Exp $

COMMENT =	regular expression library for OCaml
CATEGORIES =	devel

V =		1.2.2
GH_ACCOUNT =	ocaml
GH_PROJECT =	ocaml-re
GH_TAGNAME =	${GH_PROJECT}-${V}
DISTNAME =	${GH_PROJECT}-${V}

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests


post-install:
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md,TODO.txt} \
		${PREFIX}/share/doc/ocaml-re/


.include <bsd.port.mk>
