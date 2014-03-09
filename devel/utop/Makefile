# $OpenBSD: Makefile,v 1.2 2014/03/09 19:50:33 jasper Exp $

COMMENT =		enhanced OCaml toplevel
DISTNAME =		utop-1.5
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://forge.ocamlcore.org/projects/utop/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://forge.ocamlcore.org/frs/download.php/1169/

CONFIGURE_STYLE =	oasis
CONFIGURE_ARGS +=	--enable-tests

MODULES =		lang/ocaml
RUN_DEPENDS =		devel/ocaml-lambda-term
BUILD_DEPENDS =		${RUN_DEPENDS}

# silence a warning
pre-build:
	# already shipped by the OCaml package
	rm ${WRKBUILD}/src/lib/errors.mli

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES.md,README.md} \
		${PREFIX}/share/doc/utop/
	gunzip ${PREFIX}/man/*/*.gz


.include <bsd.port.mk>
