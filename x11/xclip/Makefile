# $OpenBSD: Makefile,v 1.13 2015/01/21 13:24:40 jca Exp $

COMMENT=		command line interface to X selections
DISTNAME=		xclip-0.12
REVISION=		0
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xclip/}
HOMEPAGE=		http://xclip.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB+=		X11 Xmu c

NO_TEST=		yes
USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
