# $OpenBSD: Makefile,v 1.12 2000/05/21 19:58:35 angelos Exp $

DISTNAME=	camlp4-3.00
PKGNAME=	camlp4-3.00
CATEGORIES=	lang
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	ocamlc::lang/ocaml

LICENSE_TYPE=           BSD
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

IS_INTERACTIVE=	Yes
NO_PACKAGE=	interactive port
HAS_CONFIGURE=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

WRKDIST=		${WRKDIR}/camlp4-3.00

.include <bsd.port.mk>
