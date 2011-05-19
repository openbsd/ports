# $OpenBSD: Makefile,v 1.54 2011/05/19 14:43:16 ajacoutot Exp $

COMMENT=		themes collection for GNOME

GNOME_PROJECT=		gnome-themes
GNOME_VERSION=		2.32.1

REVISION=		4

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

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/gnome/icon-theme

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Accessibility themes are now in gnome-themes-standard.
RM_THEMES=	themes/HighContrast \
		themes/HighContrastInverse \
		themes/HighContrastLargePrint \
		themes/HighContrastLargePrintInverse \
		themes/LowContrast \
		themes/LowContrastLargePrint \
		themes/Inverted \
		themes/LargePrint \
		icons/HighContrast \
		icons/HighContrastInverse \
		icons/HighContrastLargePrint \
		icons/HighContrastLargePrintInverse \
		icons/HighContrast-SVG \
		icons/LargePrint

post-install:
.for t in ${RM_THEMES}
	rm -rf ${PREFIX}/share/$t
.endfor

.include <bsd.port.mk>
