# $OpenBSD: Makefile,v 1.15 2001/02/12 19:19:19 ian Exp $
#
# If you are getting compile errors like these:
#     Undefined symbol `_postOutOfMemory' referenced from text segment
#     Undefined symbol `_PtrClass' referenced from text segment
# please read the file pkg/COMPILATION

DISTNAME=	kaffe-1.0.6
CATEGORIES=	lang
NEED_VERSION=	1.319

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/

BUILD_DEPENDS=	libtool::devel/libtool
# Note that "lesstif" is NOT a dependency: Kaffe has its own, Motifless, AWT.
# You must have the X11 client packages installed; no good way to DEPEND this
# (if you don't, I think it will build a command-line-only Java--untested).
LIB_DEPENDS=	jpeg.62.::graphics/jpeg \
		gif.4.::graphics/giflib \
		png.1.::graphics/png \
		gmp.4.::devel/gmp

HOMEPAGE=	http://www.kaffe.org/

# This port REQUIRES shared libs, and will not work without them
# (dynamic linking is an essential element of Java).
# At present it is only known to work on i386. 
# Builds nicely, but does not run at all, on sparc (gets 
# nullpointerexceptions everywhere).
ONLY_FOR_ARCHS=	i386 # sparc m68k

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# build/configuration variables
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ENV=	${SETENV} CPPFLAGS=-I/usr/local/include \
			LDFLAGS=-L/usr/local/lib

post-install:
	@${INSTALL_DATA} ${WRKSRC}/FAQ/FAQ.* ${PREFIX}/share/kaffe

.include <bsd.port.mk>
