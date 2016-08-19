# $OpenBSD: Makefile,v 1.11 2016/08/19 12:51:19 krw Exp $

CATEGORIES=		devel
COMMENT=		extended standard library for OCaml

GH_ACCOUNT=		ygrek
GH_PROJECT=		ocaml-extlib
GH_TAGNAME=		1.7.0

HOMEPAGE=		https://github.com/ygrek/ocaml-extlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/ocaml

BUILD_DEPENDS=		sysutils/findlib devel/ocaml-cppo

USE_GMAKE =		Yes

NO_TEST=		Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET =		build doc
.else
ALL_TARGET =		all doc
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-extlib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-extlib/html
	${INSTALL_DATA} ${WRKDIST}/src/doc/* \
		${PREFIX}/share/doc/ocaml-extlib/html/
	${INSTALL_DATA} ${WRKDIST}/{README,LICENSE} \
		${PREFIX}/share/doc/ocaml-extlib/

.include <bsd.port.mk>
