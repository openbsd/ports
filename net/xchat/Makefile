# $OpenBSD: Makefile,v 1.25 2001/03/01 05:02:02 brad Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.6.4
CATEGORIES=	net x11
NEED_VERSION=	1.336
MASTER_SITES=	http://xchat.org/files/source/1.6/ \
		http://xchat.linuxpower.org/files/source/1.6/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

LIB_DEPENDS=	intl.1::devel/gettext \
		gtk.1.2::x11/gtk+

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-gnome --disable-imlib --disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
