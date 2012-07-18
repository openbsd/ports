# $OpenBSD: Makefile,v 1.3 2012/07/18 19:54:56 sthen Exp $

COMMENT=		small tiling window manager

SHARED_LIBS=		swmhack 1.0

DISTNAME=		spectrwm-1.1.2
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11

HOMEPAGE=		https://opensource.conformal.com/wiki/spectrwm
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c X11 Xrandr Xtst util

MASTER_SITES=	http://opensource.conformal.com/snapshots/spectrwm/

NO_REGRESS=	Yes

RUN_DEPENDS=	x11/dmenu>=4.4.1

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/man" \
		SHLIB_MAJOR=${LIBswmhack_VERSION:R} \
		SHLIB_MINOR=${LIBswmhack_VERSION:E}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/spectrwm.c

post-install:
	ln -s ${TRUEPREFIX}/bin/spectrwm ${PREFIX}/bin/scrotwm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/baraction.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/initscreen.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/screenshot.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_DATA} ${WRKSRC}/spectrwm.conf ${PREFIX}/share/examples/spectrwm

.for i in es cz fr fr_ch se us
	${INSTALL_DATA_DIR} ${WRKSRC}/spectrwm_$i.conf
	mv ${WRKSRC}/spectrwm_$i.conf ${PREFIX}/share/examples/spectrwm
.endfor

.include <bsd.port.mk>
