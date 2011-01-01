# $OpenBSD: Makefile,v 1.7 2011/01/01 16:58:08 rpointel Exp $

COMMENT =		library to manipulate units of physical quantities
DISTNAME =		udunits-2.1.20
CATEGORIES =		math
HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

SHARED_LIBS =		udunits2 0.0

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        CFLAGS="-std=c99 ${CFLAGS:C/ *$//} -I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# if need be...
AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

REGRESS_DEPENDS =	devel/cunit
WANTLIB +=		c expat m

.include <bsd.port.mk>
