COMMENT=		evolution connector for MS Exchange via EWS

GNOME_PROJECT=		evolution-ews
GNOME_VERSION=		3.52.4

CATEGORIES=		mail

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 cairo cairo-gobject camel-1.2 ebackend-1.2
WANTLIB += ebook-1.2 ebook-contacts-1.2 ecal-2.0 edata-book-1.2
WANTLIB += edata-cal-2.0 edataserver-1.2 edataserverui-1.2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 harfbuzz ical ical-glib icalss icalvcal intl
WANTLIB += javascriptcoregtk-4.1 json-glib-1.0 m mspack pango-1.0
WANTLIB += pangocairo-1.0 pthread soup-3.0 webkit2gtk-4.1 xml2
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

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
