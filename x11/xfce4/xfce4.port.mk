# $OpenBSD: xfce4.port.mk,v 1.6 2009/04/28 19:37:29 landry Exp $

# Module for Xfce related ports, divided into three categories:
# core, goodies, plugins.

XFCE_DESKTOP_VERSION=	4.6.1
CATEGORIES+=	x11/xfce4

USE_GMAKE?=	Yes
EXTRACT_SUFX?=	.tar.bz2

# needed for all ports but *-themes
.if !defined(XFCE_NO_SRC)
USE_LIBTOOL?=	Yes
MODULES+=	devel/gettext textproc/intltool
.endif

# if version is not defined, it's the DE version
.if !defined(XFCE_VERSION)
XFCE_VERSION=	${XFCE_DESKTOP_VERSION}
.endif

# Set to 'yes' if there are .desktop files in the package list.
.if defined(DESKTOP_FILES) && ${DESKTOP_FILES:L} == "yes"
MODXFCE_RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
.endif

.if defined(XFCE_PLUGIN)
HOMEPAGE?=	http://goodies.xfce.org/projects/panel-plugins/xfce4-${XFCE_PLUGIN}-plugin

MASTER_SITES?=	http://goodies.xfce.org/releases/xfce4-${XFCE_PLUGIN}-plugin/
DISTNAME?=	xfce4-${XFCE_PLUGIN}-plugin-${XFCE_VERSION}
PKGNAME?=	${DISTNAME:S/-plugin//}

MODXFCE_LIB_DEPENDS=	xfce4panel.>=2::x11/xfce4/xfce4-panel
.elif defined(XFCE_GOODIE)
HOMEPAGE?=	http://goodies.xfce.org/projects/applications/${XFCE_GOODIE}

MASTER_SITES?=	http://goodies.xfce.org/releases/${XFCE_GOODIE}/
DISTNAME=	${XFCE_GOODIE}-${XFCE_VERSION}
.elif defined(XFCE_PROJECT)
HOMEPAGE?=	http://www.xfce.org/projects/${XFCE_PROJECT}

MASTER_SITES?=	http://www.xfce.org/archive/xfce-${XFCE_DESKTOP_VERSION}/src/
DISTNAME=	${XFCE_PROJECT}-${XFCE_VERSION}
.endif

LIB_DEPENDS+=	${MODXFCE_LIB_DEPENDS}
RUN_DEPENDS+=	${MODXFCE_RUN_DEPENDS}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
