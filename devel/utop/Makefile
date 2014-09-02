# $OpenBSD: Makefile,v 1.6 2014/09/02 09:24:44 chrisz Exp $

COMMENT =	enhanced OCaml toplevel
CATEGORIES =	devel

V =		1.15
GH_ACCOUNT =	diml
GH_PROJECT =	utop
GH_TAGNAME =	${V}
GH_COMMIT =	c77830eb9dc52e39c5ebcafac6ffe760a9dff012
DISTNAME =	${GH_PROJECT}-$V

HOMEPAGE =	https://github.com/diml/utop
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
RUN_DEPENDS =		devel/ocaml-lambda-term
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib lang/ocaml-camlp4

# silence a warning
post-extract:
	# already shipped by the OCaml package
	rm ${WRKBUILD}/src/lib/errors.mli

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/utop/
	gunzip ${PREFIX}/man/*/*.gz


.include <bsd.port.mk>
