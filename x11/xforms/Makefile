# $OpenBSD: Makefile,v 1.20 2002/05/16 13:40:47 naddy Exp $

COMMENT=	"GUI toolkit for X11"

ONLY_FOR_ARCHS=	i386 sparc m68k

XFORMS_ARCH=	${MACHINE_ARCH}

DISTNAME=	bxform-088
PKGNAME=	xforms-0.88
CATEGORIES=	x11
NEED_VERSION=	1.522
MASTER_SITES=	ftp://ncmir.ucsd.edu/pub/xforms/$S/ \
		ftp://ftp.fu-berlin.de/unix/X11/gui/xforms/$S/ \
		ftp://ftp.st.ryukoku.ac.jp/pub/X11/xforms/$S/
S=		openBSD-${XFORMS_ARCH}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	xforms/$S

HOMEPAGE=	http://world.std.com/~xforms/

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
