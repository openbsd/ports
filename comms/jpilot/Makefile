# $OpenBSD: Makefile,v 1.36 2006/09/18 11:40:07 espie Exp $

COMMENT=	"desktop organizer software for the palm pilot"

DISTNAME=	jpilot-0.99.8
PKGNAME=	${DISTNAME}p3
CATEGORIES=	comms palm

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c readline crypto m ncurses X11 Xext \
		Xrender fontconfig freetype atk-1.0.>=800.0 \
		gdk_pixbuf-2.0.>=400.14 glib-2.0.>=400.8 gmodule-2.0.>=400.8 \
		gobject-2.0.>=400.8 pango-1.0.>=600.0 pangoft2-1.0.>=600.0 \
		pangocairo-1.0 cairo glitz png z

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	pisock.>=8::comms/pilot-link \
		gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2

MODULES=	devel/gettext

USE_LIBTOOL=		yes
USE_X11=		yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk2 \
			--with-pilot-prefix=${LOCALBASE} \
			--with-gtk-prefix=${LOCALBASE}

MAN1=	jpilot-dump.1 jpilot-sync.1 jpilot-upgrade-99.1 jpilot.1

pre-build:
.for i in ${MAN1}
	perl -pi -e "s,/usr/share,${LOCALBASE}/share,g" ${WRKSRC}/docs/${i}
.endfor

.include <bsd.port.mk>
