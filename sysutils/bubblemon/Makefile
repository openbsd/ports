# $OpenBSD: Makefile,v 1.6 2001/10/09 15:33:35 naddy Exp $

COMMENT=		"GNOME panel applet that displays the CPU + memory load"
V=			1.0.5
DISTNAME=		bubblemon-${V}
CATEGORIES=		sysutils x11/gnome
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
	@${INSTALL_DATA_DIR} -d ${PREFIX}/share/examples/bubblemon; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/bubblemon/

.include <bsd.port.mk>
