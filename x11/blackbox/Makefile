# $OpenBSD: Makefile,v 1.45 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	small & pretty window manager for 8 and more bits displays

DISTNAME=		blackbox-0.70.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11

HOMEPAGE=		http://blackboxwm.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xft Xrender c expat m fontconfig \
			freetype stdc++ z pthread-stubs xcb

MODULES=		converters/libiconv

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-shared
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
