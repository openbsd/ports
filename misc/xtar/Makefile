# $OpenBSD: Makefile,v 1.34 2013/10/11 20:39:40 naddy Exp $

COMMENT=	view and manipulate contents of a tar file

DISTNAME=	xtar-1.4
REVISION=	4
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c m pthread-stubs xcb Xm

CONFIGURE_STYLE=imake
LIB_DEPENDS+=	x11/openmotif
USE_GROFF =	Yes
MAKE_FLAGS=	EXTRA_LDOPTIONS=-L${WRKBUILD}/common
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
