# $OpenBSD: Makefile,v 1.47 2008/01/04 17:48:33 espie Exp $

COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-0.99.9
PKGNAME=	${DISTNAME}p6
CATEGORIES=	comms palm

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto \
		expat fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png pthread z

LIB_DEPENDS=	pisock.>=9::comms/pilot-link \
		gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext

USE_LIBTOOL=		yes
USE_X11=		yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-pilot-prefix=${LOCALBASE} \
			--with-gtk-prefix=${LOCALBASE}

MAN1=	jpilot-dump.1 jpilot-sync.1 jpilot.1

MAKE_FLAGS = mkdir_p='mkdir -p'

pre-build:
.for i in ${MAN1}
	perl -pi -e "s,/usr/share,${LOCALBASE}/share,g" ${WRKSRC}/docs/${i}
.endfor

.include <bsd.port.mk>
