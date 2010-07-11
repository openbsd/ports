# $OpenBSD: Makefile,v 1.1.1.1 2010/07/11 10:32:52 espie Exp $

COMMENT =		library to manipulate units of physical quantities
DISTNAME =		udunits-2.1.17
CATEGORIES =		math
HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

LIB_DEPENDS =		cunit::devel/cunit
SHARED_LIBS =		udunits2 0.0

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        CFLAGS="-std=c99 ${CFLAGS:C/ *$//} -I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# if need be...
AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

WANTLIB +=      c expat m

.include <bsd.port.mk>
