# $OpenBSD: Makefile,v 1.32 2011/08/03 15:21:18 robert Exp $

COMMENT=		small tiling window manager

SHARED_LIBS=		swmhack 0.0

DISTNAME=		scrotwm-0.9.32
EXTRACT_SUFX=		.tgz
CATEGORIES=		x11

REVISION=		0

HOMEPAGE=		http://www.scrotwm.org/
MAINTAINER=		Marco Peereboom <marco@peereboom.us>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c X11 Xrandr util

MASTER_SITES=	http://opensource.conformal.com/snapshots/scrotwm/

NO_REGRESS=	Yes
# nroff is specifically used to format the Russian manpage
USE_GROFF=	Yes

RUN_DEPENDS=	x11/dmenu>=3.9

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

.for i in es it pt ru
	${INSTALL_DATA_DIR} ${PREFIX}/man/$i/man1
	mv ${PREFIX}/man/man1/scrotwm_$i.1 ${PREFIX}/man/$i/man1/scrotwm.1
.endfor

.include <bsd.port.mk>
