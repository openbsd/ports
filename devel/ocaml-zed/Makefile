# $OpenBSD: Makefile,v 1.6 2014/08/27 08:05:17 chrisz Exp $

COMMENT =	abstract engine for text edition
CATEGORIES =	devel

GH_ACCOUNT =	diml
GH_PROJECT =	zed
GH_TAGNAME =	1.3
GH_COMMIT =	b8da01e8a4493d2182c0379b16aa8511c6264f01
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/diml/zed/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-react devel/ocaml-camomile
RUN_DEPENDS =	lang/ocaml devel/ocaml-camomile

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/ocaml-zed/


.include <bsd.port.mk>
