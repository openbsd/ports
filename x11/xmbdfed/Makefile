# OpenBSD makefile for:	xmbdfed
# Version required:	2.7
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 2000/10/22 15:44:04 espie Exp $
#

DISTNAME=	xmbdfed-4.4
CATEGORIES=	x11
NEED_VERSION=	1.230
MASTER_SITES=	ftp://crl.nmsu.edu/CLR/multiling/General/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	ttf.1.3::print/freetype

USE_MOTIF=	Yes

MAKE_FLAGS=	CFLAGS='${CFLAGS}' STATIC='' \
	FTYPE_LIBS='-L${LOCALBASE}/lib -lttf' \
	FTYPE_DEFS='-DHAVE_FREETYPE' \
	FTYPE_INCS='-I${LOCALBASE}/include' \
	HBFDEFS='-Dunix -DIN_MEMORY -DGUNZIP_CMD="\"/usr/bin/gunzip -c\""' \
	INCS='-I${X11BASE}/include -I${LOCALBASE}/include $$(FTYPE_INCS)' \
	LIBS='-L${X11BASE}/lib -L${LOCALBASE}/lib ${MOTIFLIB} -lXpm -lXmu -lXt -lX11 -lSM -lICE -lXext $$(FTYPE_LIBS)'


do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmbdfed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man ${PREFIX}/man/man1/xmbdfed.1

.include <bsd.port.mk>
