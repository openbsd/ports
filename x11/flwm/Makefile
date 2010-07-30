# $OpenBSD: Makefile,v 1.22 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT=	fast-light window manager

DISTNAME=	flwm-1.00
PKGNAME=	flwm-1.0.0
REVISION=	1
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DFLTK_1_0_COMPAT -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

USE_X11=	Yes

LIB_DEPENDS=	::x11/fltk

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext c m stdc++ fltk

NO_REGRESS=	Yes

.include <bsd.port.mk>
