# $OpenBSD: Makefile,v 1.7 2001/10/28 13:05:50 espie Exp $

COMMENT=	"C++ interface for gtk+"

DISTNAME=	gtkmm-1.2.1
CATEGORIES=	devel x11
NEED_VERSION=	1.402
MASTER_SITES=	http://download.sourceforge.net/gtkmm/

BUILD_DEPENDS=	gm4::devel/m4

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		sigc.0.0::devel/libsigc++

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

.include <bsd.port.mk>
