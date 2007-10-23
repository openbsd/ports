# $OpenBSD: Makefile,v 1.1.1.1 2007/10/23 11:16:14 naddy Exp $

COMMENT=	GTK-based BDF font editor

DISTNAME=	gbdfed-1.3
PKGNAME=	${DISTNAME}pl1
CATEGORIES=	x11
HOMEPAGE=	http://crl.nmsu.edu/~mleisher/gbdfed.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://crl.nmsu.edu/~mleisher/
EXTRACT_SUFX=	.tar.bz2
PATCHFILES=	gbdfed-1.3-patch1

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# leakage from bsd.own.mk
MAKE_ENV=	STATIC=""

NO_REGRESS=	Yes

.include <bsd.port.mk>
