# $OpenBSD: Makefile,v 1.7 1999/11/26 18:27:46 ian Exp $
#
# Relevant URLs:	http://www.transvirtual.com/kaffe/

# If you are getting compile errors like these:
#	Undefined symbol `_postOutOfMemory' referenced from text segment
#	Undefined symbol `_PtrClass' referenced from text segment
# please read the file pkg/COMPILATION

DISTNAME=	kaffe-1.0.5
CATEGORIES=	lang

NEED_VERSION=	1.73

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/

BUILD_DEPENDS=	libtool:${PORTSDIR}/devel/libtool
# Note that "lesstif" is NOT a dependency: Kaffe has its own, Motifless, AWT.
# You must have the X11 client packages installed; no good way to DEPEND this
# (if you don't, I think it will build a command-line-only Java--untested).
LIB_DEPENDS=	jpeg.62.:${PORTSDIR}/graphics/jpeg \
			gif.4.:${PORTSDIR}/graphics/giflib \
			png.1.:${PORTSDIR}/graphics/png

# This port REQUIRES shared libs, and will not work without them
# (dynamic linking is an essential element of Java).
# At present it is only known to work on i386. 
# Builds nicely, but does not run at all, on sparc (gets 
# nullpointerexceptions everywhere).
ONLY_FOR_ARCHS = i386 # sparc m68k

MAINTAINER=	ian@OpenBSD.ORG

# build/configuration variables
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_ENV=		${SETENV} CPPFLAGS=-I/usr/local/include \
					LDFLAGS=-L/usr/local/lib

post-install:
		@${INSTALL_DATA} ${WRKSRC}/FAQ/* ${PREFIX}/share/kaffe

.include <bsd.port.mk>
