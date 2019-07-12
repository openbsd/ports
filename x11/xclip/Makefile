# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:30 sthen Exp $

COMMENT=		command line interface to X selections
GH_ACCOUNT=		astrand
GH_PROJECT=		xclip
GH_TAGNAME=		0.13
REVISION=		1
CATEGORIES=		x11

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB+=		X11 Xmu c

NO_TEST=		yes
USE_GMAKE=		yes
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

.include <bsd.port.mk>
