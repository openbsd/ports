# $OpenBSD: Makefile,v 1.4 2014/08/27 08:05:17 chrisz Exp $

COMMENT =	enhanced OCaml toplevel
CATEGORIES =	devel

V =		1.14
GH_ACCOUNT =	diml
GH_PROJECT =	utop
GH_TAGNAME =	${V}
GH_COMMIT =	af110d2742bc01ff7a898019676fa44e515043aa
DISTNAME =	${GH_PROJECT}-$V

HOMEPAGE =	https://github.com/diml/utop
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
RUN_DEPENDS =		devel/ocaml-lambda-term
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib lang/ocaml,-camlp4

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
