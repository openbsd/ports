# $OpenBSD: Makefile,v 1.1.1.1 2008/07/25 12:54:33 landry Exp $

COMMENT =	lightweight web browser

DISTNAME =	midori-0.0.18
CATEGORIES =	www

HOMEPAGE =	http://www.twotoasts.de/index.php/pages/midori_summary.html
MASTER_SITES =	http://www.twotoasts.de/media/midori/

MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			DATADIRNAME="share"

USE_X11 =	Yes
USE_GMAKE =	Yes

LIB_DEPENDS =	webkit-1.0::www/webkit \
		sexy::x11/libsexy

RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c crypto \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 icudata icui18n icuuc idn intl jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pthread sqlite3 ssl \
		xslt z cairo curl estdc++ pixman-1 png xml2

post-extract:
	@chmod 755 ${WRKSRC}/install-sh

.include <bsd.port.mk>
