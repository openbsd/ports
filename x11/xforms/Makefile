# $OpenBSD: Makefile,v 1.6 2000/02/16 10:52:15 espie Exp $

DISTNAME=	bxform-088
PKGNAME=	xforms-0.88
WRKDIST=	${WRKDIR}/xforms
CATEGORIES=	x11
MASTER_SITES=	ftp://bragg.phys.uwm.edu/pub/xforms/%SUBDIR%/
NEED_VERSION=	1.191

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
	mv ${WRKSRC}/mkconfig.h ${WRKSRC}/mkconfig.h.orig
	cp ${FILESDIR}/mkconfig.h ${WRKSRC}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
