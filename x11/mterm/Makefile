# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:14 espie Exp $

COMMENT=		dockable program launcher

DISTNAME=		mterm-0.4.2b
CATEGORIES=		x11

HOMEPAGE=		http://mterm.sourceforge.net/

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mterm/}

USE_GROFF =		Yes
NO_TEST=		Yes

ALL_TARGET=		mterm
MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			INCLUDES="-I${X11BASE}/include" \
			LIB_DIRS="-L${X11BASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mterm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mterm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mterm
	${INSTALL_DATA} ${WRKSRC}/mtermrc.example \
		${PREFIX}/share/examples/mterm/dot.mtermrc

.include <bsd.port.mk>
