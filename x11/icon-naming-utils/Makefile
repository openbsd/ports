# $OpenBSD: Makefile,v 1.11 2015/05/22 11:36:16 ajacoutot Exp $

COMMENT=		compatibility tools from the Tango project

DISTNAME=		icon-naming-utils-0.8.90
CATEGORIES=		x11
REVISION=		1

HOMEPAGE=		http://tango.freedesktop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		textproc/p5-XML-Simple
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes
PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

.include <bsd.port.mk>
