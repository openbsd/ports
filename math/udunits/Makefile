# $OpenBSD: Makefile,v 1.9 2013/03/11 11:23:56 espie Exp $

COMMENT =		library to manipulate units of physical quantities
DISTNAME =		udunits-2.1.24
CATEGORIES =		math
HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

SHARED_LIBS =		udunits2 1.0

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	devel/cunit
TEST_TARGET =	check
WANTLIB +=		c expat m

.include <bsd.port.mk>
