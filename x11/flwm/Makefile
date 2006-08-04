# $OpenBSD: Makefile,v 1.18 2006/08/04 00:10:42 espie Exp $

COMMENT=	"fast-light window manager"

DISTNAME=	flwm-1.00
PKGNAME=	flwm-1.0.0
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

MAINTAINER=	Jason Wright <jason@openbsd.org>

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -DFLTK_1_0_COMPAT -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

USE_X11=	Yes

#NO_SHARED_LIBS= Yes
LIB_DEPENDS=	fltk.>=1::x11/fltk

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++

NO_REGRESS=	Yes

.include <bsd.port.mk>
