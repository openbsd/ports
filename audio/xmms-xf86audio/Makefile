# $OpenBSD: Makefile,v 1.2 2005/05/23 22:57:56 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	"XF86Audio multimedia-key support for XMMS"
DISTNAME=	xmms-xf86audio-0.4.2
CATEGORIES=	audio
HOMEPAGE=	http://www.devin.com/xmms-xf86audio/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

LIB_DEPENDS=	xmms.4::audio/xmms
WANTLIB=	X11 Xext Xi m gdk glib gmodule gtk iconv intl

MAKE_FLAGS=	CC="${CC}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
