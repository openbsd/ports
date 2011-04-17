# $OpenBSD: Makefile,v 1.50 2011/04/17 15:11:56 ajacoutot Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.32.1

REVISION=		0

CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/icon-naming-utils>=0.8.90
RUN_DEPENDS=		devel/gettext \
			x11/gtk-engines2

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
