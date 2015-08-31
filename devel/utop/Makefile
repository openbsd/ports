# $OpenBSD: Makefile,v 1.10 2015/08/31 11:39:47 sthen Exp $

COMMENT =	enhanced OCaml toplevel
CATEGORIES =	devel

V =		1.15
GH_ACCOUNT =	diml
GH_PROJECT =	utop
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-$V
REVISION =	1

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
