# $OpenBSD: Makefile,v 1.14 2001/05/11 22:54:15 pjanzen Exp $

COMMENT=	"Athena port of xminesweeper"

DISTNAME=	xmine-1.0.3-Xaw
PKGNAME=	xmine-1.0.3
CATEGORIES=	games
NEED_VERSION=	1.402

MAINTAINER=	Paul Janzen <pjanzen@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_LOCAL}

LIB_DEPENDS=    Xaw3d.::x11/Xaw3d

CONFIGURE_STYLE=imake

.include <bsd.port.mk>
