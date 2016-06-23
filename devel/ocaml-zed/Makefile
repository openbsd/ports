# $OpenBSD: Makefile,v 1.10 2016/06/23 19:23:53 krw Exp $

COMMENT =	abstract engine for text edition
CATEGORIES =	devel

GH_ACCOUNT =	diml
GH_PROJECT =	zed
GH_TAGNAME =	1.4
PKGNAME =	ocaml-${DISTNAME}
REVISION =	0

HOMEPAGE =	https://github.com/diml/zed/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-react devel/ocaml-camomile \
		devel/ocaml-ocamlbuild
RUN_DEPENDS =	lang/ocaml devel/ocaml-camomile

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/ocaml-zed/


.include <bsd.port.mk>
