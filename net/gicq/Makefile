# $OpenBSD: Makefile,v 1.8 2000/03/24 23:28:25 espie Exp $
# $FreeBSD: Makefile,v 1.6 1999/04/06 12:02:41 flathill Exp $

DISTNAME=	gicq-0.33
CATEGORIES=	net
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.korsoft.com/pub/gicq/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		icq.0.3::devel/libicq

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--without-gnome --disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE} -L${X11BASE}/lib" \
		GTK_CONFIG="${LOCALBASE}/bin/gtk-config"

.include <bsd.port.mk>
