# $OpenBSD: Makefile,v 1.1.1.1 2001/02/06 08:07:48 obecian Exp $

DISTNAME=	crank-0.0.5
CATEGORIES=	security
NEED_VERSION=	1.348
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	crank

HOMEPAGE=	http://crank.sourceforge.net

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
ALL_TARGET=	crank

DATA=	bift.dat slft.dat trift.dat
DOC=	BUGS HISTORY LICENSE README ciphertext.txt

post-patch:
	cd ${WRKSRC}; \
	cp crank.h _bad_crank.h; \
	sed -e s#!!LOCALBASE!!#${LOCALBASE}#g _bad_crank.h > crank.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/crank ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/crank
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/crank
.for file in ${DATA}
	@ ${INSTALL_DATA} ${WRKSRC}/data/${file} ${PREFIX}/share/crank
.endfor                                         
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/crank
.endfor

.include <bsd.port.mk>
