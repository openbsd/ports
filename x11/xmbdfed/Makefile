# $OpenBSD: Makefile,v 1.13 2003/04/19 13:30:47 espie Exp $

COMMENT=	"Motif tool for editing X11 bitmap fonts"

VERSION=	4.5
DISTNAME=	xmbdfed-${VERSION}
PKGNAME=	${DISTNAME}.1
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://crl.nmsu.edu/~mleisher/ \
		ftp://crl.nmsu.edu/CLR/multiling/General/
PATCHFILES=	xmbdfed-${VERSION}-patch1

LIB_DEPENDS=	ttf.1.3::print/freetype

USE_X11=	Yes
USE_MOTIF=	any

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS}' STATIC='' \
		FTYPE_LIBS='-L${LOCALBASE}/lib -lttf' \
		FTYPE_DEFS='-DHAVE_FREETYPE' \
		FTYPE_INCS='-I${LOCALBASE}/include/freetype1/freetype' \
		HBFDEFS='-Dunix -DIN_MEMORY -DGUNZIP_CMD="\"/usr/bin/gunzip -c\""' \
		INCS='-I${X11BASE}/include -I${LOCALBASE}/include $$(FTYPE_INCS)' \
		LIBS='-L${X11BASE}/lib -L${LOCALBASE}/lib ${MOTIFLIB} -lXpm -lXmu -lXt -lX11 -lSM -lICE -lXext $$(FTYPE_LIBS)'

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmbdfed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man ${PREFIX}/man/man1/xmbdfed.1

.include <bsd.port.mk>
