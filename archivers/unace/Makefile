# $OpenBSD: Makefile,v 1.1.1.1 1999/04/18 22:11:20 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/04/02 04:19:20 steve Exp $

DISTNAME=	unacepub
PKGNAME=	unace-1.2b
CATEGORIES=	archivers
MASTER_SITES=	http://members.aol.com/mlemke6413/
EXTRACT_SUFX=	.zip

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	unzip:${PORTSDIR}/archivers/unzip

USE_GMAKE=	yes
ALL_TARGET=	unace
MAKEFILE=	unix/makefile

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
 ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "pmax ")
CFLAGS= -DLO_HI_BYTE_ORDER
.else
CFLAGS= -DHI_LO_BYTE_ORDER
.endif

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@${MKDIR} ${WRKSRC}
	@unzip -q -o ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} -d ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unace ${PREFIX}/bin

.include <bsd.port.mk>
