# $OpenBSD: Makefile,v 1.36 2006/04/09 20:12:55 pedro Exp $

COMMENT=	"light, keyboard friendly window manager"

V=		20060326
DISTNAME=	ion-3ds-${V}
PKGNAME=	ion-${V}p0
CATEGORIES=	x11

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
MASTER_SITES=	${HOMEPAGE}dl/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE X11 m c Xinerama SM Xext
MODULES=	devel/gettext
LIB_DEPENDS=	lua.5,lualib.5::lang/lua

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	$(INSTALL_DATA) ${FILESDIR}/*.lua ${PREFIX}/share/examples/ion3

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=       PRELOAD_MODULES=1
.endif
