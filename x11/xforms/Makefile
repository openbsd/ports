# $OpenBSD: Makefile,v 1.4 1999/04/09 04:12:01 brad Exp $

DISTNAME=	bxform-088
PKGNAME=	xforms-0.88
WRKSRC=		${WRKDIR}/xforms
CATEGORIES=	x11
MASTER_SITES=	ftp://bragg.phys.uwm.edu/pub/xforms/%SUBDIR%/

.if (${MACHINE_ARCH} == "hp300")
XFORMS_ARCH=	m68k
.else
XFORMS_ARCH=	${MACHINE_ARCH}
.endif

MASTER_SITE_SUBDIR=	openBSD-${XFORMS_ARCH}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

DIST_SUBDIR=	xforms/${MASTER_SITE_SUBDIR}

## Define OBJMACHINE so WRKDIR is defined to be ${MACHINE_ARCH}-specific.
OBJMACHINE=	yes
NO_BUILD=	yes
USE_X11=	yes

post-patch:
	${MV} ${WRKSRC}/mkconfig.h ${WRKSRC}/mkconfig.h.orig
	${CP} ${FILESDIR}/mkconfig.h ${WRKSRC}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
