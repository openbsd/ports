# $OpenBSD: Makefile,v 1.12 2001/07/09 17:11:05 pvalchev Exp $

COMMENT=	"fast-light window manager"

DISTNAME=	flwm-1.00
PKGNAME=	flwm-1.0.0
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://flwm.sourceforge.net/

MAINTAINER=	Jason Wright <jason@openbsd.org>

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

USE_X11=	Yes

NO_SHARED_LIBS= Yes
LIB_DEPENDS=	fltk::x11/fltk

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
