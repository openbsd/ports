# $OpenBSD: Makefile,v 1.16 2002/03/21 20:57:08 espie Exp $

COMMENT=	"Athena port of xminesweeper"

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
CATEGORIES=	games
NEED_VERSION=	1.515

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_LOCAL}

LIB_DEPENDS=    Xaw3d.::x11/Xaw3d

CONFIGURE_STYLE=imake

.include <bsd.port.mk>
