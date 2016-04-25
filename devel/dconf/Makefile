# $OpenBSD: Makefile,v 1.70 2016/04/25 10:14:40 ajacoutot Exp $

# -fvisibility
NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.26.0

SHARED_LIBS +=		dconf        1.0 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl pthread

MODULES=		x11/gnome

MODGNOME_TOOLS=		docbook vala

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{bin,client}/Makefile.in
	perl -pi -e 's,/etc/dconf,${SYSCONFDIR}/dconf,g' \
		${WRKSRC}/engine/dconf-engine-source-system.c \
		${WRKSRC}/engine/dconf-engine-profile.c \
		${WRKSRC}/docs/dconf-overview.xml \
		${WRKSRC}/docs/html/dconf-overview.html \
		${WRKSRC}/bin/dconf-update.vala \
		${WRKSRC}/bin/dconf-update.c \
		${WRKSRC}/tests/engine.c

.include <bsd.port.mk>
