# $OpenBSD: Makefile,v 1.17 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"Athena port of xminesweeper"

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
CATEGORIES=	games

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_LOCAL}

LIB_DEPENDS=    Xaw3d.::x11/Xaw3d

CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
