# $OpenBSD: Makefile,v 1.46 2013/08/06 18:43:15 naddy Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. bktr(4) needed
ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	capture utility for Brooktree-based cards
DISTNAME=	fxtv-1.03
REVISION=	6

CATEGORIES=	graphics
HOMEPAGE=	https://people.freebsd.org/~rhh/fxtv/
EXTRACT_SUFX=	.tgz

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/fxtv/

LIB_DEPENDS=	graphics/tiff \
		graphics/jpeg \
		x11/Xaw3d

RUN_DEPENDS=	audio/sox>=12.12 \
		audio/mpg321 \
		audio/mp3encode \
		graphics/mpeg_encode>=1.5 \
		graphics/mplex>=1.1 \
		graphics/netpbm

# BSD license
PERMIT_PACKAGE_CDROM=	Runtime dependencies have patents
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt Xxf86dga Xxf86vm c m \
			ossaudio pthread-stubs xcb z tiff>=35 jpeg>=62 \
			Xaw3d>=6.1

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_TEST=	Yes

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
