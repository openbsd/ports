# $oPENbsD$

COMMENT=		"libXaw widget set replacement"

VERSION=		0.13.0
DISTNAME=		neXtaw-${VERSION}
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

MASTER_SITES=		http://siag.nu/pub/neXtaw/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

NO_REGRESS=		Yes

.include <bsd.port.mk>
