COMMENT=		flat theme for GTK and GNOME shell (${ARC_TYPE})

V=			20220223
DISTNAME=		arc-theme-${V}
PKGNAME=		arc-theme-${ARC_TYPE}-${V}

CATEGORIES=		x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/jnsh/arc-theme/releases/download/${V}/
EXTRACT_SUFX=		.tar.xz

MODULES +=		devel/meson

BUILD_DEPENDS +=	devel/glib2 \
			www/sassc

PKG_ARCH=		*

CONFIGURE_ARGS +=	-Dgnome_shell_gresource=true \
			-Dgnome_shell_version=41 \
			-Dthemes="gnome-shell,gtk2,gtk3,gtk4,xfwm"

CHECKSUM_FILE=		${.CURDIR}/../distinfo
DESCR=			${.CURDIR}/../DESCR
SUBST_VARS +=		ARC_TYPE
