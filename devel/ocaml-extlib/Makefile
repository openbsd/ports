# $OpenBSD: Makefile,v 1.1.1.1 2012/11/06 20:52:49 jasper Exp $

COMMENT=		extended standard library for OCaml

DISTNAME=		extlib-1.5.3
PKGNAME=		ocaml-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://ocaml-extlib.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/ocaml

BUILD_DEPENDS=		sysutils/findlib

NO_REGRESS=		Yes

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
