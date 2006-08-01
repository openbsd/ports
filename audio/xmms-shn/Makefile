# $OpenBSD: Makefile,v 1.16 2006/08/01 12:13:28 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"XMMS input plugin for playing shorten files"

DISTNAME=	xmms-shn-2.4.0
PKGNAME=	${DISTNAME}p0
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

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
