# $OpenBSD: Makefile,v 1.3 2001/09/20 18:39:13 naddy Exp $

COMMENT=		"GNOME panel applet that displays the CPU + memory load"
V=			1.0.5
DISTNAME=		bubblemon-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.d.kth.se/~d92-jwa/code/
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		http://www.d.kth.se/~d92-jwa/code/bubblemon/ \
			http://nforced.com/openbsd/distfiles/

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop.1::devel/libgtop,gnome

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@install -d ${PREFIX}/share/bubblemon; \
	cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/bubblemon/

.include <bsd.port.mk>
