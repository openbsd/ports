# $OpenBSD: Makefile,v 1.8 2000/10/22 16:23:02 espie Exp $

DISTNAME=	flwm-0.25
PKGNAME=	flwm-0.25
CATEGORIES=	x11
NEED_VERSION=	1.305
MASTER_SITES=	http://www.cinenet.net/users/spitzak/flwm/
MAINTAINER=	Jason Wright <jason@openbsd.org>

EXTRACT_SUFX=	.tgz
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CXXFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"
NO_SHARED_LIBS=	Yes
LIB_DEPENDS=	fltk::x11/fltk

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
