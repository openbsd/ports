# $OpenBSD: Makefile,v 1.2 1999/05/21 00:51:52 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	ace12b
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/

NEED_VERSION=	1.91

MAINTAINER=	brad@openbsd.org

NO_WRKSUBDIR=	yes
USE_GMAKE=	yes
USE_ZIP=	yes
ALL_TARGET=	unace
MAKEFILE=	unix/makefile

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
 ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "pmax ")
CFLAGS= -DLO_HI_BYTE_ORDER
.else
CFLAGS= -DHI_LO_BYTE_ORDER
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
