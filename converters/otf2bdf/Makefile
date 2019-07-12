# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:49 sthen Exp $

COMMENT = 	OpenType to BDF font converter
CATEGORIES =	converters fonts
HOMEPAGE = 	http://sofia.nmsu.edu/~mleisher/Software/otf2bdf/
DISTNAME = 	otf2bdf-3.1
REVISION =	1
MASTER_SITES =	http://sofia.nmsu.edu/~mleisher/Software/otf2bdf/
EXTRACT_SUFX =	.tgz

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c freetype z

CONFIGURE_STYLE = 	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/otf2bdf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/otf2bdf.man ${PREFIX}/man/man1/otf2bdf.1

.include <bsd.port.mk>
