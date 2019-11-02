# $OpenBSD: Makefile,v 1.111 2019/11/02 09:36:09 ajacoutot Exp $

COMMENT=		evolution connector for MS Exchange via EWS

GNOME_PROJECT=		evolution-ews
GNOME_VERSION=		3.34.1

CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 cairo cairo-gobject camel-1.2 ebackend-1.2
WANTLIB += ebook-1.2 ebook-contacts-1.2 ecal-2.0 edata-book-1.2
WANTLIB += edata-cal-2.0 edataserver-1.2 edataserverui-1.2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 ical ical-glib icalss icalvcal intl javascriptcoregtk-4.0
WANTLIB += m mspack nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += plc4 plds4 pthread secret-1 smime3 soup-2.4 sqlite3
WANTLIB += ssl3 webkit2gtk-4.0 xml2
WANTLIB += lib/evolution/email-engine
WANTLIB += lib/evolution/evolution-calendar
WANTLIB += lib/evolution/evolution-mail-composer
WANTLIB += lib/evolution/evolution-mail-formatter
WANTLIB += lib/evolution/evolution-mail
WANTLIB += lib/evolution/evolution-shell
WANTLIB += lib/evolution/evolution-util

MODULES=		devel/cmake \
			x11/gnome

LIB_DEPENDS=		archivers/libmspack \
			mail/evolution

.include <bsd.port.mk>
