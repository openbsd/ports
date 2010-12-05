# $OpenBSD: Makefile,v 1.17 2010/12/05 18:24:33 jasper Exp $

COMMENT=	LaTeX to html translator

CATEGORIES=	textproc print

# Q Licence 1.0 + LGPL for parts of the runtime
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m 

BUILD_DEPENDS=	lang/ocaml

DISTNAME=	hevea-1.06
REVISION=	1
MASTER_SITES=	ftp://ftp.inria.fr/INRIA/moscova/hevea/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}-manual${EXTRACT_SUFX}

MAINTAINER=	Marc Espie <espie@openbsd.org>
HOMEPAGE=	http://para.inria.fr/%7Emaranget/hevea/

MAKE_FLAGS=LIBDIR='${PREFIX}/lib/hevea' BINDIR='${PREFIX}/bin'
FAKE_FLAGS=LIBDIR='${WRKINST}${PREFIX}/lib/hevea' BINDIR='${WRKINST}${PREFIX}/bin'

.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "sparc" && \
	${MACHINE_ARCH} != "alpha" && ${MACHINE_ARCH} != "amd64" && \
	${MACHINE_ARCH} != "powerpc"
RUN_DEPENDS=	lang/ocaml
MAKE_FLAGS+=	TARGET='byte'
FAKE_FLAGS+=	TARGET='byte'
.endif

# Beware! this works only because the manual is flat
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hevea
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}-manual/* ${PREFIX}/share/doc/hevea

NO_REGRESS=	Yes
	
.include <bsd.port.mk>
