# $OpenBSD: Makefile,v 1.15 2004/08/10 16:58:09 naddy Exp $

COMMENT=	"light, keyboard friendly window manager"

DISTNAME=	ion-2-20040729
PKGNAME=	ion-2.20040729

HOMEPAGE=	http://modeemi.cs.tut.fi/~tuomov/ion/
CATEGORIES=	x11

MASTER_SITES=	${HOMEPAGE}dl/ \
		ftp://rt.fm/pub/ion/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_X11=	Yes

NO_REGRESS=	Yes

LIB_DEPENDS=	ltdl.4::devel/libtool \
		lua.5,lualib.5::lang/lua

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	PRELOAD_MODULES=1
.endif
