# $OpenBSD: Makefile,v 1.24 2002/02/02 00:52:18 naddy Exp $

COMMENT=	"Display and capture for Brooktree-based cards"
DISTNAME=	fxtv-1.03

CATEGORIES=	graphics
NEED_VERSION=	1.500
HOMEPAGE=	http://people.freebsd.org/~rhh/fxtv/
EXTRACT_SUFX=	.tgz

MASTER_SITES=	${HOMEPAGE} \
		http://vedge.com.ar/mirror/fxtv/ \
		ftp://vedge.com.ar/pub/mirror/fxtv/

LIB_DEPENDS=	tiff.35::graphics/tiff \
		jpeg.62::graphics/jpeg \
		Xaw3d.6.1::x11/Xaw3d

RUN_DEPENDS=	::audio/sox \
		::audio/mpg123 \
		::audio/mp3encode \
		::graphics/mpeg_encode \
		::graphics/mplex

MAINTAINER=	Wilbern Cobb <vedge@csoft.org>

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
