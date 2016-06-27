# $OpenBSD: Makefile,v 1.14 2016/06/27 11:50:08 edd Exp $

COMMENT =	enhanced OCaml toplevel
CATEGORIES =	devel

V =		1.19.2
GH_ACCOUNT =	diml
GH_PROJECT =	utop
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-$V
REVISION =	1

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
RUN_DEPENDS =		devel/ocaml-lambda-term
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib lang/ocaml-camlp4 \
			devel/ocaml-ocamlbuild \
			devel/ocaml-cppo

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/utop/
	gunzip ${PREFIX}/man/*/*.gz


.include <bsd.port.mk>
