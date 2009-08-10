# $OpenBSD: Makefile,v 1.27 2009/08/10 06:33:02 kili Exp $

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
USE_X11=	Yes
USE_MOTIF=	any
MAKE_FLAGS=	EXTRA_LDOPTIONS=-L${WRKBUILD}/common

NO_REGRESS=	Yes

.include <bsd.port.mk>
