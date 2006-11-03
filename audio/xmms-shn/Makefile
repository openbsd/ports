# $OpenBSD: Makefile,v 1.17 2006/11/03 14:29:11 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing shorten files"

DISTNAME=	xmms-shn-2.4.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
HOMEPAGE=	http://www.etree.org/shnutils/xmms-shn/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule gtk iconv intl m pthread

MASTER_SITES=	${HOMEPAGE}source/

LIB_DEPENDS=	gthread.>=1.2::devel/glib
RUN_DEPENDS=	::audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
