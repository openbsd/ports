# $OpenBSD: Makefile,v 1.1.1.1 2005/11/06 13:17:27 alek Exp $

COMMENT=	"improved artwiz fonts"

DISTNAME=	artwiz-aleczapka-1.3
CATEGORIES=	x11

HOMEPAGE=	http://artwizaleczapka.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=artwizaleczapka/}
EXTRACT_SUFX=	.tar.bz2

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INST_DIR=	${PREFIX}/lib/X11/fonts/artwiz-aleczapka

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/artwiz-aleczapka/*.pcf ${INST_DIR}
	${X11BASE}/bin/mkfontscale ${INST_DIR}
	${X11BASE}/bin/mkfontdir ${INST_DIR}
	cd ${INST_DIR} && \
	sed -e 's/.pcf.gz//' fonts.dir|grep artwiz > fonts.alias-artwiz

.include <bsd.port.mk>
