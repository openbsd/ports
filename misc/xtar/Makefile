# $OpenBSD: Makefile,v 1.29 2010/10/24 21:26:49 ajacoutot Exp $

COMMENT=	view and manipulate contents of a tar file

DISTNAME=	xtar-1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_MOTIF=	any
USE_GROFF =	Yes
MAKE_FLAGS=	EXTRA_LDOPTIONS=-L${WRKBUILD}/common

NO_REGRESS=	Yes

.include <bsd.port.mk>
