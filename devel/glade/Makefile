# $OpenBSD: Makefile,v 1.1.1.1 2001/09/14 13:37:38 todd Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"
V=			0.5.11
DISTNAME=		glade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.417
HOMEPAGE=		http://glade.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/glade

LIB_DEPENDS=		gtk.1.2::x11/gtk+
RUN_DEPENDS=  		automake::devel/automake \
			autoconf::devel/autoconf

FLAVORS=		gnome
FLAVOR?=

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36::x11/gnome/libs
.else
CONFIGURE_ARGS+=	"--disable-gnome"
.endif

.include <bsd.port.mk>
