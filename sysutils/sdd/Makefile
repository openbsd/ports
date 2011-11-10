# $OpenBSD: Makefile,v 1.22 2011/11/10 14:13:06 sthen Exp $

COMMENT=	faster and improved version of dd

DISTNAME=	sdd-1.52
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c 

MASTER_SITES=	ftp://ftp.berlios.de/pub/sdd/ \
		http://spacehopper.org/mirrors/berlios/sdd/

USE_GMAKE=	Yes
MAKE_ENV=	MAKEPROG="${MAKE_PROGRAM}" CCOM="${CC}" COPTX="${CFLAGS}"

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	cd ${WRKSRC}/RULES && \
	    ln -sf i386-openbsd-cc.rul ${MACHINE}-openbsd-${CC}.rul
.endif

USE_GROFF=	Yes
NO_REGRESS=	Yes

OBJ=	OBJ/${MACHINE_ARCH}-openbsd-${CC}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/sdd/${OBJ}/sdd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sdd/sdd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
