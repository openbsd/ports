# $OpenBSD: Makefile,v 1.28 2003/02/21 23:30:13 wcobb Exp $

ONLY_FOR_ARCHS=	i386 macppc

COMMENT=	"Display and capture for Brooktree-based cards"
DISTNAME=	fxtv-1.03

CATEGORIES=	graphics
HOMEPAGE=	http://people.freebsd.org/~rhh/fxtv/
EXTRACT_SUFX=	.tgz

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/fxtv/

LIB_DEPENDS=	tiff.35::graphics/tiff \
		jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d

RUN_DEPENDS=	:sox->=12.12:audio/sox \
		:mpg321-*:audio/mpg321 \
		:mp3encode-*:audio/mp3encode \
		:mpeg_encode->=1.5:graphics/mpeg_encode \
		:mplex->=1.1:graphics/mplex

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
