# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:49 wilfried Exp $

DISTNAME=		wmtimebomb.20
PKGNAME=		wmtimebomb-0.2.0
CATEGORIES=		games x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.maliwan.org/wmtimebomb.shtml

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/mharo/ \
			ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/mharo/

LIB_DEPENDS=		wraster.2::x11/windowmaker \
			PropList.2::devel/libproplist \
			jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.1::graphics/png \
			gif.4::graphics/giflib

USE_X11=		Yes
CONFIGURE_STYLE=	imake

FLAVORS=		8bpp
FLAVOR?=

WRKDIST=		${WRKDIR}/wmtimebomb.app

SAMPLE_DIR=		${PREFIX}/share/examples/wmtimebomb
SUBST_VARS+=		SAMPLE_DIR

pre-configure:
.if ${FLAVOR:L:M8pp}
	cd ${WRKSRC} && \
		rm XPM && ln -s XPM.lo XPM
.else
	cd ${WRKSRC} && \
		rm XPM && ln -s XPM.hi XPM
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmtimebomb ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/example.modefile ${SAMPLE_DIR}

.include <bsd.port.mk>
