# $OpenBSD: Makefile,v 1.2 2002/09/21 15:32:01 marcm Exp $

COMMENT=		"bonobo configuration system"

DISTNAME=		bonobo-conf-0.16
CATEGORIES=    		x11/gnome
HOMEPAGE=		http://developer.gnome.org/arch/component/bonobo.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>


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
