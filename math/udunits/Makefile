# $OpenBSD: Makefile,v 1.13 2015/11/11 10:43:59 benoit Exp $

COMMENT =		library to manipulate units of physical quantities

DISTNAME =		udunits-2.2.20
CATEGORIES =		math

SHARED_LIBS =		udunits2 2.1

HOMEPAGE =		http://www.unidata.ucar.edu/software/udunits/

# original BSD-like, with advertisement clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		ftp://ftp.unidata.ucar.edu/pub/udunits/

WANTLIB +=		c expat m

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

TEST_DEPENDS =		devel/cunit
TEST_TARGET =		check

.include <bsd.port.mk>
