# $OpenBSD: Makefile,v 1.17 2004/08/11 09:58:12 espie Exp $

COMMENT=	"collection of ATM fonts from the CICA archives"

DISTNAME=	freefonts-0.10
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/fonts/ \
   		ftp://ftp.funet.fi/pub/mirrors/ftp.gimp.org/gimp/fonts/

HOMEPAGE=	http://www.gimp.org/fonts.html

# lots of different custom licenses, the worst one wins
PERMIT_PACKAGE_CDROM=	"may not sell"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"may not sell"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}
USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
FREEFONTDIR=	${PREFIX}/lib/X11/fonts

do-install:
	${INSTALL_DATA_DIR} ${FREEFONTDIR}
	cd ${WRKDIST} && tar cf - freefont | (cd ${FREEFONTDIR} && tar -xf -)
	cd ${FREEFONTDIR}/freefont && mv fonts.dir fonts.dir.dist

.include <bsd.port.mk>
