# $OpenBSD: Makefile,v 1.12 2002/12/03 22:45:33 pvalchev Exp $

COMMENT=		"GNOME panel applet that displays the CPU + memory load"

DISTNAME=		bubblemon-1.0.11
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.d.kth.se/~d92-jwa/code/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		http://www.d.kth.se/~d92-jwa/code/bubblemon/ \
			http://www.d.kth.se/~d92-jwa/code/bubblemon/attic \
			http://nforced.com/openbsd/distfiles/

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop.1,gtop_common,gtop_sysdeps::devel/libgtop,gnome

# GPL
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
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/bubblemon/

.include <bsd.port.mk>
