# $OpenBSD: Makefile,v 1.4 2016/02/29 15:27:18 ajacoutot Exp $

COMMENT =	regular expression library for OCaml
CATEGORIES =	devel

V =		1.4.1
GH_ACCOUNT =	ocaml
GH_PROJECT =	ocaml-re
GH_TAGNAME =	${GH_PROJECT}-${V}
DISTNAME =	${GH_PROJECT}-${V}
REVISION =	0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ocaml

USE_GMAKE =		Yes
CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS =	--enable-tests
BUILD_DEPENDS =         devel/ounit


post-install:
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md,TODO.txt} \
		${PREFIX}/share/doc/ocaml-re/


.include <bsd.port.mk>
