# $OpenBSD: Makefile,v 1.14 2000/10/22 14:03:20 espie Exp $

DISTNAME=	camlp4-3.00
PKGNAME=	camlp4-3.00
CATEGORIES=	lang
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/Daniel.de_Rauglaudre/Camlp4/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

BUILD_DEPENDS=	ocamlc::lang/ocaml

LICENSE_TYPE=           BSD
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-configure:
	@sed -e s,@PREFIX@,${PREFIX}, <${FILESDIR}/Makefile.cnf.template >${WRKSRC}/config/Makefile.cnf
	@cd ${WRKSRC}/config && echo ""| cat Makefile.tpl - Makefile.cnf >>Makefile

USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

WRKDIST=		${WRKDIR}/camlp4-3.00

.include <bsd.port.mk>
