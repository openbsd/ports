# $OpenBSD: Makefile,v 1.8 2011/11/18 08:27:34 rpointel Exp $

COMMENT =		library to manipulate units of physical quantities
DISTNAME =		udunits-2.1.24
CATEGORIES =		math
HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

SHARED_LIBS =		udunits2 1.0

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_DEPENDS =	devel/cunit
REGRESS_TARGET =	check
WANTLIB +=		c expat m

.include <bsd.port.mk>
