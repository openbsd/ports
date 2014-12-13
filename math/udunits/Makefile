# $OpenBSD: Makefile,v 1.11 2014/12/13 17:15:01 benoit Exp $

COMMENT =		library to manipulate units of physical quantities
DISTNAME =		udunits-2.2.17
CATEGORIES =		math
HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

SHARED_LIBS =		udunits2 2.0


CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =	devel/cunit
TEST_TARGET =	check
WANTLIB +=		c expat m

.include <bsd.port.mk>
