# $OpenBSD: Makefile,v 1.11 2002/05/13 18:50:42 espie Exp $

COMMENT=	"gtk+ clone of the lines ball logic game"

DISTNAME=	gtkballs-2.2.0
CATEGORIES=	games x11
NEED_VERSION=	1.504
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE:=games/strategy/}

HOMEPAGE=	http://gtkballs.antex.ru/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--localstatedir=/var/games
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
