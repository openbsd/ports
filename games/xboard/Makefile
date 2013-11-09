# $OpenBSD: Makefile,v 1.31 2013/11/09 23:19:03 naddy Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=	xboard-4.6.2
REVISION=	0
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

HOMEPAGE=	https://www.gnu.org/software/xboard/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xaw Xmu Xpm Xt c m

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/xdg-utils

RUN_DEPENDS=		games/gnuchess \
			devel/desktop-file-utils \
			devel/xdg-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/cmail ${PREFIX}/bin/

.include <bsd.port.mk>
