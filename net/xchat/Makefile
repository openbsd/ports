# $OpenBSD: Makefile,v 1.1.1.1 1999/06/14 03:10:49 brad Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-0.9.6
CATEGORIES=	x11
MASTER_SITES=	http://xchat.linuxpower.org/files/ \
		http://www.ozemail.com.au/~peterzelezny/xchat/ \
		http://www.spyda.co.za/pub/linux/x11/irc/xchat/

MAINTAINER=	chris@dqc.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
USE_GMAKE=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-gnome --disable-imlib --disable-panel
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@strip ${PREFIX}/bin/xchat
	@${MKDIR} ${PREFIX}/share/doc/xchat
	@chmod a+rx ${PREFIX}/share/doc/xchat
	@${INSTALL_DATA} ${WRKSRC}/doc/*.* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
