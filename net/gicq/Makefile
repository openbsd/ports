# $OpenBSD: Makefile,v 1.4 2000/02/15 05:04:53 turan Exp $
# $FreeBSD: Makefile,v 1.6 1999/04/06 12:02:41 flathill Exp $

DISTNAME=	gicq-0.33
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.korsoft.com/pub/gicq/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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


