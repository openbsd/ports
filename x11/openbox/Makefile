# $OpenBSD: Makefile,v 1.41 2008/04/16 19:54:33 ajacoutot Exp $

COMMENT=	small, fast & usable window manager

DISTNAME=	openbox-3.4.7.1
SHARED_LIBS+=	obparser	8.0 # .21.2
SHARED_LIBS+=	obrender	8.0 # .21.2
CATEGORIES=	x11

HOMEPAGE=	http://icculus.org/openbox/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://offload1.icculus.org/openbox/releases/

WANTLIB=	ICE SM X11 Xext Xft Xinerama Xrandr Xrender c \
		fontconfig freetype m z glib-2.0 gmodule-2.0 \
		gobject-2.0 Xau Xcursor Xdmcp Xfixes expat pcre

MODULES=	devel/gettext

BUILD_DEPENDS=	::textproc/docbook-to-man
LIB_DEPENDS+=	pango-1.0,pangoxft-1.0,pangoft2-1.0::devel/pango \
		xml2.>=6::textproc/libxml \
		startup-notification-1.>=1::devel/startup-notification

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--docdir=${PREFIX}/share/examples/openbox

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv"
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/openbox"

pre-configure:
	@chmod +x ${WRKSRC}/install-sh
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/data/autostart.sh.in

pre-build:
.for i in openbox-gnome-session.1 openbox-kde-session.1 openbox-session.1 openbox.1
	${LOCALBASE}/bin/docbook-to-man \
		${WRKSRC}/doc/${i}.sgml > ${WRKSRC}/doc/${i}.in
.endfor

.include <bsd.port.mk>
