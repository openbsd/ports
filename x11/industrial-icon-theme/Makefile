# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:14 sthen Exp $

COMMENT=		Industrial icon theme from OpenSUSE

DISTNAME=		industrial-icon-theme-11.0.5
REVISION=		9

CATEGORIES=		x11

MASTER_SITES=		http://forgeftp.novell.com/opensuse-art/openSUSE11/icons/

# CC-BY-SA 3.0
PERMIT_PACKAGE=	Yes

MODULES=		textproc/intltool

RUN_DEPENDS=		x11/gtk+3,-guic

BUILD_DEPENDS=		x11/icon-naming-utils

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/tango-icon-theme

NO_TEST=		Yes
USE_GMAKE=		Yes
PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
