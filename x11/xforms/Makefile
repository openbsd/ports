# $OpenBSD: Makefile,v 1.11 2000/03/25 13:39:26 espie Exp $

DISTNAME=	bxform-088
PKGNAME=	xforms-0.88
WRKDIST=	${WRKDIR}/xforms
CATEGORIES=	x11
NEED_VERSION=	1.227
MASTER_SITES=	ftp://bragg.phys.uwm.edu/pub/xforms/%SUBDIR%/
HOMEPAGE=	http://world.std.com/~xforms/
MAINTAINER=	ports@openbsd.org

# I asked the author and I got permission (OpenBSD is a similar enough case
# to Linux) -- espie@
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if (${MACHINE_ARCH} == "hp300")
XFORMS_ARCH=	m68k
.else
XFORMS_ARCH=	${MACHINE_ARCH}
.endif

MASTER_SITE_SUBDIR=	openBSD-${XFORMS_ARCH}
EXTRACT_SUFX=	.tgz

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

DIST_SUBDIR=	xforms/${MASTER_SITE_SUBDIR}

## Define OBJMACHINE so WRKDIR is defined to be ${MACHINE_ARCH}-specific.
OBJMACHINE=	Yes
NO_BUILD=	Yes
USE_X11=	Yes
FAKE=		Yes
FAKE_FLAGS=	PREFIX=${PREFIX} DESTDIR=${WRKINST}

post-patch:
	mv ${WRKSRC}/mkconfig.h ${WRKSRC}/mkconfig.h.orig
	cp ${FILESDIR}/mkconfig.h ${WRKSRC}

.include <bsd.port.mk>
