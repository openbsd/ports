# $OpenBSD: Makefile,v 1.53 2014/11/11 09:28:29 dcoppa Exp $

COMMENT=	small & pretty window manager for 8 and more bits displays

DISTNAME=		blackbox-0.70.1
REVISION=		5
CATEGORIES=		x11

HOMEPAGE=		http://blackboxwm.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xrender c expat fontconfig freetype m
WANTLIB += pthread-stubs stdc++ xcb z

MODULES=		converters/libiconv

LIBTOOL_FLAGS=		--tag=disable-shared
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
