# $OpenBSD: Makefile,v 1.23 2001/01/22 00:26:48 naddy Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.6.3
CATEGORIES=	net x11
NEED_VERSION=	1.336
HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://xchat.org/files/source/1.6/ \
		http://xchat.linuxpower.org/files/source/1.6/

LIB_DEPENDS=	intl.1::devel/gettext \
		gtk.1.2::x11/gtk+

USE_BZIP2=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-gnome --disable-imlib --disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
