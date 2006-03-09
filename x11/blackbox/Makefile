# $OpenBSD: Makefile,v 1.40 2006/03/09 03:02:44 pvalchev Exp $

COMMENT=	"small & pretty window manager for 8 and more bits displays"

DISTNAME=		blackbox-0.70.1
PKGNAME=		${DISTNAME}
CATEGORIES=		x11

HOMEPAGE=		http://blackboxwm.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=blackboxwm/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xrender c m fontconfig freetype stdc++

MODULES=		converters/libiconv

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

DOCS=			README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
