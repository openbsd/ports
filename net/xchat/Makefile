# $OpenBSD: Makefile,v 1.21 2000/08/27 19:52:18 brad Exp $
# $FreeBSD: Makefile,v 1.12 1999/06/08 23:41:54 steve Exp $

DISTNAME=	xchat-1.4.3
CATEGORIES=	x11
NEED_VERSION=	1.320
MASTER_SITES=	http://xchat.org/files/source/1.4/ \
		http://xchat.linuxpower.org/files/source/1.4/

HOMEPAGE=	http://www.xchat.org/

LIB_DEPENDS=	intl.1::devel/gettext \
		gtk.1.2::x11/gtk+

MAINTAINER=	chris@dqc.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-gnome --disable-imlib --disable-python
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@strip ${PREFIX}/bin/xchat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xchat
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/xchat

.include <bsd.port.mk>
