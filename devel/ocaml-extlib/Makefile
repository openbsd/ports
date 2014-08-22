# $OpenBSD: Makefile,v 1.6 2014/08/22 22:21:53 kili Exp $

COMMENT=		extended standard library for OCaml

DISTNAME=		extlib-1.5.3
REVISION=		3
PKGNAME=		ocaml-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		https://ocaml-extlib.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/ocaml

BUILD_DEPENDS=		sysutils/findlib

NO_TEST=		Yes

ALL_TARGET =		doc all

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
ALL_TARGET +=		opt
. if ${PROPERTIES:Mocaml_native_dynlink}
ALL_TARGET +=		cmxs
. endif
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-extlib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-extlib/html
	${INSTALL_DATA} ${WRKDIST}/doc/* \
		${PREFIX}/share/doc/ocaml-extlib/html/
	${INSTALL_DATA} ${WRKDIST}/{README.txt,LICENSE} \
		${PREFIX}/share/doc/ocaml-extlib/

.include <bsd.port.mk>
