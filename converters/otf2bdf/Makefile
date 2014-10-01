# $OpenBSD: Makefile,v 1.2 2014/10/01 08:58:23 jasper Exp $

COMMENT = 	OpenType to BDF font converter
CATEGORIES = 	converters fonts
HOMEPAGE = 	http://www.math.nmsu.edu/~mleisher/Software/otf2bdf/
DISTNAME = 	otf2bdf-3.1
REVISION =	0
MASTER_SITES = 	${HOMEPAGE}
EXTRACT_SUFX = 	.tgz

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c freetype z

CONFIGURE_STYLE = 	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/otf2bdf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/otf2bdf.man ${PREFIX}/man/man1/otf2bdf.1

.include <bsd.port.mk>
