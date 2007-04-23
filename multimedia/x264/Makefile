# $OpenBSD: Makefile,v 1.2 2007/04/23 10:20:48 ajacoutot Exp $

COMMENT=	"free h264/avc encoder"

V=		20070325
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}p0
SHARED_LIBS=	x264	0.0	# 5.0
CATEGORIES=	multimedia

HOMEPAGE=	http://www.videolan.org/developers/x264.html

EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/x264/snapshots/

WANTLIB=	c m pthread

NO_REGRESS=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-pthread

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/nasm
.endif

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g; s,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
