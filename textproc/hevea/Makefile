# $OpenBSD: Makefile,v 1.2 2000/10/10 00:40:56 espie Exp $

CATEGORIES=	textproc print
NEED_VERSION=	1.281


V=1.05
# Q Licence 1.0 + LGPL for parts of the runtime
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	ocamlc::lang/ocaml

DISTNAME=	hevea-$V
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/Projects/para/hevea/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-manual${EXTRACT_SUFX}

MAINTAINER=	Marc Espie <espie@openbsd.org>
HOMEPAGE=	http://para.inria.fr/%7Emaranget/hevea/

MAKE_FLAGS=LIBDIR='${PREFIX}/lib/hevea' BINDIR='${PREFIX}/bin'
FAKE_FLAGS=LIBDIR='${WRKINST}${PREFIX}/lib/hevea' BINDIR='${WRKINST}${PREFIX}/bin'

# Beware! this works only because the manual is flat
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hevea
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}-manual/* ${PREFIX}/share/doc/hevea
	
.include <bsd.port.mk>
