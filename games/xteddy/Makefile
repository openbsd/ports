# $OpenBSD: Makefile,v 1.8 2000/07/24 10:35:09 kevlo Exp $

DISTNAME=	xteddy-2.0.1
CATEGORIES=	games
NEED_VERSION=	1.319
MASTER_SITES=	http://www.ITN.LiU.SE/~stegu/xteddy/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Imlib.19::graphics/imlib

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
