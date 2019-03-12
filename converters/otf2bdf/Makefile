# $OpenBSD: Makefile,v 1.3 2019/03/12 19:49:31 fcambus Exp $

COMMENT = 	OpenType to BDF font converter
CATEGORIES =	converters fonts
HOMEPAGE = 	http://sofia.nmsu.edu/~mleisher/Software/otf2bdf/
DISTNAME = 	otf2bdf-3.1
REVISION =	1
MASTER_SITES =	http://sofia.nmsu.edu/~mleisher/Software/otf2bdf/
EXTRACT_SUFX =	.tgz

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c freetype z

CONFIGURE_STYLE = 	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/otf2bdf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/otf2bdf.man ${PREFIX}/man/man1/otf2bdf.1

.include <bsd.port.mk>
