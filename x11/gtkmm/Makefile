# $OpenBSD: Makefile,v 1.2 2000/07/04 02:17:54 krw Exp $

DISTNAME=	gtkmm-1.2.1
CATEGORIES=	devel graphics x11
NEED_VERSION=	1.310
MASTER_SITES=	http://download.sourceforge.net/gtkmm/

BUILD_DEPENDS=	gm4::devel/m4

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		sigc.0.0::devel/libsigc++

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
