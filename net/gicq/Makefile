# $OpenBSD: Makefile,v 1.5 2000/02/15 21:40:34 brad Exp $
# $FreeBSD: Makefile,v 1.6 1999/04/06 12:02:41 flathill Exp $

DISTNAME=	gicq-0.33
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.korsoft.com/pub/gicq/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		icq.0.3:${PORTSDIR}/devel/libicq

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--without-gnome --disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE} -L${X11BASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

.include <bsd.port.mk>
