# $OpenBSD: Makefile,v 1.12 2000/09/13 04:04:02 brad Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

.if (${MACHINE_ARCH} == "hp300")
XFORMS_ARCH=	m68k
.else
XFORMS_ARCH=	${MACHINE_ARCH}
.endif

DISTNAME=	bxform-088
PKGNAME=	xforms-0.88
CATEGORIES=	x11
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.via.ecp.fr/pub1/xforms/%SUBDIR%/
MASTER_SITE_SUBDIR= openBSD-${XFORMS_ARCH}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	xforms/${MASTER_SITE_SUBDIR}

HOMEPAGE=	http://world.std.com/~xforms/

MAINTAINER=	ports@openbsd.org

# I asked the author and I got permission (OpenBSD is a similar enough case
# to Linux) -- espie@
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${WRKINST}"

## Define OBJMACHINE so WRKDIR is defined to be ${MACHINE_ARCH}-specific.
OBJMACHINE=	Yes
NO_BUILD=	Yes
USE_X11=	Yes

WRKDIST=	${WRKDIR}/xforms

post-patch:
	@mv -f ${WRKSRC}/mkconfig.h ${WRKSRC}/mkconfig.h.orig
	@cp -f ${FILESDIR}/mkconfig.h ${WRKSRC}

.include <bsd.port.mk>
