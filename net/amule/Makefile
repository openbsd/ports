# $OpenBSD: Makefile,v 1.9 2007/05/10 14:33:19 ajacoutot Exp $

COMMENT=	"another eMule p2p client"

DISTNAME=	aMule-2.1.3
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	net

HOMEPAGE=	http://www.amule.org/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=amule/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	wx_gtk2_adv,wx_base_net,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.6.3:x11/wxWidgets

USE_X11=	Yes
USE_GMAKE=	Yes

WANTLIB=	X11 c m pthread stdc++ z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug --with-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_REGRESS=	Yes

.include <bsd.port.mk>
