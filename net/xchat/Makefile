# $OpenBSD: Makefile,v 1.4 1999/07/24 22:10:04 brad Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.1.4
CATEGORIES=	x11
MASTER_SITES=	http://xchat.org/files/beta/ \
		http://xchat.linuxpower.org/files/beta/

NEED_VERSION=	1.92

MAINTAINER=	chris@dqc.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_BZIP2=	yes
USE_X11=	yes
USE_GMAKE=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-gnome --disable-imlib --disable-panel
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@strip ${PREFIX}/bin/xchat
	@${MKDIR} ${PREFIX}/share/doc/xchat && chmod a+rx ${PREFIX}/share/doc/xchat
	@${INSTALL_DATA} ${WRKSRC}/doc/*.* ${PREFIX}/share/doc/xchat
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
