# $OpenBSD: Makefile,v 1.14 2017/04/30 09:58:48 benoit Exp $

COMMENT =		library to manipulate units of physical quantities

DISTNAME =		udunits-2.2.24
CATEGORIES =		math

SHARED_LIBS =		udunits2 2.2

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
