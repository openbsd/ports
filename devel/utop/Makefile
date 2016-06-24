# $OpenBSD: Makefile,v 1.12 2016/06/24 15:59:12 krw Exp $

COMMENT =	enhanced OCaml toplevel
CATEGORIES =	devel

V =		1.19.2
GH_ACCOUNT =	diml
GH_PROJECT =	utop
GH_TAGNAME =	${V}
DISTNAME =	${GH_PROJECT}-$V
REVISION =	0

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
RUN_DEPENDS =		devel/ocaml-lambda-term
BUILD_DEPENDS =		${RUN_DEPENDS} sysutils/findlib lang/ocaml-camlp4 \
			devel/ocaml-cppo

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/utop/
	gunzip ${PREFIX}/man/*/*.gz


.include <bsd.port.mk>
