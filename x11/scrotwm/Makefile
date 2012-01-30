# $OpenBSD: Makefile,v 1.35 2012/01/30 11:12:42 sthen Exp $

COMMENT=		small tiling window manager

SHARED_LIBS=		swmhack 0.0

DISTNAME=		scrotwm-0.10.0
REVISION=		0
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11

HOMEPAGE=		http://www.scrotwm.org/
MAINTAINER=		Gonzalo L. R. <gonzalo@x61.com.ar>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c X11 Xrandr Xtst util

MASTER_SITES=	http://opensource.conformal.com/snapshots/scrotwm/

NO_REGRESS=	Yes

RUN_DEPENDS=	x11/dmenu>=4.4.1

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/man" \
		SHLIB_MAJOR=${LIBswmhack_VERSION:C/\..*//} \
		SHLIB_MINOR=${LIBswmhack_VERSION:C/.*\.//}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/scrotwm.conf ${WRKSRC}/scrotwm.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scrotwm
	${INSTALL_SCRIPT} ${WRKSRC}/baraction.sh ${PREFIX}/share/examples/scrotwm
	${INSTALL_SCRIPT} ${WRKSRC}/initscreen.sh ${PREFIX}/share/examples/scrotwm
	${INSTALL_SCRIPT} ${WRKSRC}/screenshot.sh ${PREFIX}/share/examples/scrotwm
	${INSTALL_DATA} ${WRKSRC}/scrotwm.conf ${PREFIX}/share/examples/scrotwm

.for i in es cz fr fr_ch se us
	${INSTALL_DATA_DIR} ${WRKSRC}/scrotwm_$i.conf
	mv ${WRKSRC}/scrotwm_$i.conf ${PREFIX}/share/examples/scrotwm
.endfor

.include <bsd.port.mk>
