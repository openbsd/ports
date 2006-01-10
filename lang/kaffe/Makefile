# $OpenBSD: Makefile,v 1.25 2006/01/10 05:29:12 bernd Exp $
#
# If you are getting compile errors like these:
#     Undefined symbol `_postOutOfMemory' referenced from text segment
#     Undefined symbol `_PtrClass' referenced from text segment
# please read the file pkg/COMPILATION

COMMENT=	"Transvirtual's Java JDK1.1 compiler, runtime and libs"

DISTNAME=	kaffe-1.0.6
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	awt			0.0 \
		awt-1.0.6		0.0 \
		io			0.0 \
		io-1.0.6		0.0 \
		kaffevm			0.0 \
		kaffevm-1.0.6		0.0 \
		kaffexprof		0.0 \
		kaffexprof-1.0.6	0.0 \
		management		0.0 \
		management-1.0.6	0.0 \
		math			0.0 \
		math-1.0.6		0.0 \
		microsoft		0.0 \
		microsoft-1.0.6		0.0 \
		native			0.0 \
		native-1.0.6		0.0 \
		net			0.0 \
		net-1.0.6		0.0 \
		security		0.0 \
		security-1.0.6		0.0 \
		zip			0.0 \
		zip-1.0.6		0.0

CATEGORIES=	lang

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/

# Note that "lesstif" is NOT a dependency: Kaffe has its own, Motifless, AWT.
# You must have the X11 client packages installed; no good way to DEPEND this
# (if you don't, I think it will build a command-line-only Java--untested).
LIB_DEPENDS=	jpeg.62.::graphics/jpeg \
		ungif.5.::graphics/libungif \
		png.2.::graphics/png \
		gmp.4.::devel/gmp

HOMEPAGE=	http://www.kaffe.org/

# This port REQUIRES shared libs, and will not work without them
# (dynamic linking is an essential element of Java).
# At present it is only known to work on i386. 
# Builds nicely, but does not run at all, on sparc (gets 
# nullpointerexceptions everywhere).
ONLY_FOR_ARCHS=	i386 # sparc m68k

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z X11 SM Xext ICE

USE_LIBTOOL=	Yes

# build/configuration variables
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV= CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA} ${WRKSRC}/FAQ/FAQ.* ${PREFIX}/share/kaffe

.include <bsd.port.mk>
