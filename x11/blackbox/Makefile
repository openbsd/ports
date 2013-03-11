# $OpenBSD: Makefile,v 1.50 2013/03/11 11:46:08 espie Exp $

COMMENT=	small & pretty window manager for 8 and more bits displays

DISTNAME=		blackbox-0.70.1
REVISION=		2
CATEGORIES=		x11

HOMEPAGE=		http://blackboxwm.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xft Xrender c expat m fontconfig \
			freetype stdc++ z pthread-stubs xcb

MODULES=		converters/libiconv

USE_GROFF =		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-shared
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
