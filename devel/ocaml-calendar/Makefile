# $OpenBSD: Makefile,v 1.15 2015/08/30 16:18:48 avsm Exp $

COMMENT=	Objective Caml bindings for calendar functions
CATEGORIES=	devel

V=		2.03.2
DISTNAME=	calendar-${V}
PKGNAME=	ocaml-calendar-${V}
REVISION=	6
# You need to update MASTER_SITES too, when changing the version number.
MASTER_SITES=	https://forge.ocamlcore.org/frs/download.php/915/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
HOMEPAGE=	http://calendar.forge.ocamlcore.org/

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ocaml

BUILD_DEPENDS=  sysutils/findlib

NO_TEST= 	Yes
ALL_TARGET=	all
CONFIGURE_STYLE= gnu
USE_GMAKE=	yes


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocaml-calendar/api
	${INSTALL_DATA} \
		${WRKDIST}/CHANGES \
		${PREFIX}/share/doc/ocaml-calendar/
	${INSTALL_DATA} \
		${WRKDIST}/doc/* \
		${PREFIX}/share/doc/ocaml-calendar/api/


.include <bsd.port.mk>
