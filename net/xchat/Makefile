# $OpenBSD: Makefile,v 1.13 2000/02/12 08:02:28 turan Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.2.1
CATEGORIES=	x11
MASTER_SITES=	http://xchat.org/files/source/1.2/ \
		http://xchat.linuxpower.org/files/source/1.2/

MAINTAINER=	chris@dqc.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --disable-gnome --disable-imlib --disable-panel
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@strip ${PREFIX}/bin/xchat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
