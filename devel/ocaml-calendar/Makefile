# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:12 espie Exp $

COMMENT=	Objective Caml bindings for calendar functions
CATEGORIES=	devel

V=		2.03.2
DISTNAME=	calendar-${V}
PKGNAME=	ocaml-calendar-${V}
REVISION=	3
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


pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml

.include <bsd.port.mk>
