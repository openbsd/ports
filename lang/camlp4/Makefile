# $OpenBSD: Makefile,v 1.19 2002/03/21 21:09:17 espie Exp $

COMMENT=	"Pre-Processor-Pretty-Printer for Objective Caml"
COMMENT-doc=	"Camlp4 documentation"

VERSION=	3.02
DISTNAME=	camlp4-${VERSION}
PKGNAME=	camlp4-${VERSION}
PKGNAME-doc=	camlp4-doc-${VERSION}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
                ${DISTNAME}-refman.html${EXTRACT_SUFX} \
                ${DISTNAME}-tutorial.html${EXTRACT_SUFX}
CATEGORIES=	lang
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/cristal/camlp4/ \
		http://cristal.inria.fr/~ddr/Camlp4/ftp/

HOMEPAGE=	http://caml.inria.fr/camlp4/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

BUILD_DEPENDS=	::lang/ocaml
RUN_DEPENDS=	::lang/ocaml

# License: BSD
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

do-configure:
	@sed -e s,@PREFIX@,${PREFIX}, <${FILESDIR}/Makefile.cnf.template >${WRKSRC}/config/Makefile.cnf
	@cd ${WRKSRC}/config && echo ""| cat Makefile.tpl - Makefile.cnf >>Makefile

USE_GMAKE=	Yes
ALL_TARGET=	world bootstrap opt

WRKDIST=		${WRKDIR}/camlp4-${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camlp4
	cd ${PREFIX}/share/doc/camlp4 && pax -s /${DISTNAME}-refman.html/refman/ -rzf ${DISTDIR}/${DISTNAME}-refman.html${EXTRACT_SUFX}
	cd ${PREFIX}/share/doc/camlp4 && pax -s /${DISTNAME}-tutorial.html/tutorial/ -rzf ${DISTDIR}/${DISTNAME}-tutorial.html${EXTRACT_SUFX}

.include <bsd.port.mk>
