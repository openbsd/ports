# $OpenBSD: Makefile,v 1.1.1.1 1999/05/08 02:01:31 brad Exp $
# $FreeBSD: Makefile,v 1.6 1999/04/06 12:02:41 flathill Exp $

DISTNAME=	gicq-0.33
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+	\
		icq.0.3:${PORTSDIR}/devel/libicq

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--without-gnome --disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE} -L${X11BASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

.include <bsd.port.mk>


