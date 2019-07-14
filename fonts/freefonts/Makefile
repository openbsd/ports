# $OpenBSD: Makefile,v 1.5 2019/07/14 02:16:51 naddy Exp $

COMMENT=	collection of ATM fonts from the CICA archives

DISTNAME=	freefonts-0.10
REVISION=	2
CATEGORIES=	fonts x11

MASTER_SITES=	http://download.gimp.org/pub/gimp/fonts/

HOMEPAGE=	http://www.gimp.org/fonts.html

# lots of different custom licenses, the worst one wins
PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
FREEFONTDIR=	${PREFIX}/share/fonts

do-install:
	${INSTALL_DATA_DIR} ${FREEFONTDIR}
	cd ${WRKDIST} && tar -cf - -s '/^.*fonts.dir//' freefont | (cd ${FREEFONTDIR} && tar -xf -)

.include <bsd.port.mk>
