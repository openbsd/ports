# $OpenBSD: Makefile,v 1.7 2009/03/05 19:37:14 landry Exp $

COMMENT=		compatibility tools from the Tango project

DISTNAME=		icon-naming-utils-0.8.90
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		:p5-XML-Simple-*:textproc/p5-XML-Simple
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes
PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

.include <bsd.port.mk>
