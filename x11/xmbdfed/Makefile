# $OpenBSD: Makefile,v 1.7 2001/03/07 21:48:38 brad Exp $

DISTNAME=	xmbdfed-4.4
CATEGORIES=	x11
NEED_VERSION=	1.336
MASTER_SITES=	ftp://crl.nmsu.edu/CLR/multiling/General/

LIB_DEPENDS=	ttf.1.3::print/freetype

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_MOTIF=	Yes

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS}' STATIC='' \
		FTYPE_LIBS='-L${LOCALBASE}/lib -lttf' \
		FTYPE_DEFS='-DHAVE_FREETYPE' \
		FTYPE_INCS='-I${LOCALBASE}/include/freetype' \
		HBFDEFS='-Dunix -DIN_MEMORY -DGUNZIP_CMD="\"/usr/bin/gunzip -c\""' \
		INCS='-I${X11BASE}/include -I${LOCALBASE}/include $$(FTYPE_INCS)' \
		LIBS='-L${X11BASE}/lib -L${LOCALBASE}/lib ${MOTIFLIB} -lXpm -lXmu -lXt -lX11 -lSM -lICE -lXext $$(FTYPE_LIBS)'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmbdfed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man ${PREFIX}/man/man1/xmbdfed.1

.include <bsd.port.mk>
