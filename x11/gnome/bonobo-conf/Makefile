# $OpenBSD: Makefile,v 1.1.1.1 2002/05/30 12:56:59 nino Exp $

COMMENT=		"bonobo configuration system"

DISTNAME=		bonobo-conf-0.14
CATEGORIES=    		x11/gnome
NEED_VERSION=		1.530
HOMEPAGE=		http://developer.gnome.org/arch/component/bonobo.html

MAINTAINER=		Marc Matteo <marcm@lectroid.net>


#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=unstable/sources/bonobo-conf/}

MODULES=		gettext

LIB_DEPENDS=		bonobo.2,bonobox.2::x11/gnome/bonobo \
			gconf-1.1,gconf-gtk-1.1::devel/gconf

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
