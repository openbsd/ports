# $OpenBSD: Makefile,v 1.8 2015/08/30 16:05:11 avsm Exp $

COMMENT =	abstract engine for text edition
CATEGORIES =	devel

GH_ACCOUNT =	diml
GH_PROJECT =	zed
GH_TAGNAME =	1.4
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
