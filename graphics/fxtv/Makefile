# $OpenBSD: Makefile,v 1.38 2009/08/10 06:31:44 kili Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. bktr(4) needed
ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	capture utility for Brooktree-based cards
DISTNAME=	fxtv-1.03
PKGNAME=	${DISTNAME}p3

CATEGORIES=	graphics
HOMEPAGE=	http://people.freebsd.org/~rhh/fxtv/
EXTRACT_SUFX=	.tgz

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/fxtv/

LIB_DEPENDS=	tiff.>=35::graphics/tiff \
		jpeg.>=62::graphics/jpeg \
		Xaw3d.>=6.1::x11/Xaw3d

RUN_DEPENDS=	:sox->=12.12:audio/sox \
		:mpg321-*:audio/mpg321 \
		:mp3encode-*:audio/mp3encode \
		:mpeg_encode->=1.5:graphics/mpeg_encode \
		:mplex->=1.1:graphics/mplex \
		:netpbm-*:graphics/netpbm

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Runtime dependencies have patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt Xxf86dga Xxf86vm c m \
			ossaudio pthread-stubs xcb z

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}" \
		X11BASE="${X11BASE}" \
		LOCALBASE="${LOCALBASE}"
FAKE_FLAGS=	PREFIX="${WRKINST}${PREFIX}" \
		X11BASEINST="${WRKINST}${PREFIX}" \
		LOCALBASE="${WRKINST}${PREFIX}"

pre-build:
	@cd ${WRKSRC} && \
	    perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	    fxtv_cnvt.sh app_rsrc.h Fxtv

.include <bsd.port.mk>
