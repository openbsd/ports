# $OpenBSD: Makefile,v 1.13 2011/04/18 11:48:44 landry Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el sparc64 hppa

COMMENT =	library for efficient computations 

DISTNAME =	cln-1.3.1
REVISION =	1
SHARED_LIBS +=  cln                  1.0      # .5.2
CATEGORIES =	devel

HOMEPAGE =	http://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		c m stdc++ gmp

LIB_DEPENDS =		devel/gmp 

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
