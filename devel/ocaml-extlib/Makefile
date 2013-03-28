# $OpenBSD: Makefile,v 1.4 2013/03/28 23:21:02 jturner Exp $

COMMENT=		extended standard library for OCaml

DISTNAME=		extlib-1.5.3
REVISION=		1
PKGNAME=		ocaml-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://ocaml-extlib.googlecode.com/

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
