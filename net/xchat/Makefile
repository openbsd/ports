# $OpenBSD: Makefile,v 1.17 2000/03/24 23:28:29 espie Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.2.1
CATEGORIES=	x11
NEED_VERSION=	 1.230
MASTER_SITES=	http://xchat.org/files/source/1.2/ \
		http://xchat.linuxpower.org/files/source/1.2/

MAINTAINER=	chris@dqc.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl::devel/gettext \
		gtk.1.2::x11/gtk+

USE_X11=	Yes
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= --disable-gnome --disable-imlib --disable-panel
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${LOCALBASE}/bin/gtk-config"

post-install:
	@strip ${PREFIX}/bin/xchat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
