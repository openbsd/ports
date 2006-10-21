# $OpenBSD: Makefile,v 1.2 2006/10/21 11:47:42 ajacoutot Exp $

COMMENT=	"improved artwiz fonts"
COMMENT-de=	"improved artwiz fonts (german pack)"
COMMENT-se=	"improved artwiz fonts (swedish pack)"

V=		1.3
NAME=		artwiz-aleczapka
DISTNAME=	${NAME}-en-${V}
PKGNAME=	${NAME}-${V}p0
PKGNAME-de=	${NAME}-de-${V}
PKGNAME-se=	${NAME}-se-${V}
CATEGORIES=	x11

HOMEPAGE=	http://artwizaleczapka.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

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

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${NAME}-de-${V}${EXTRACT_SUFX} \
		${NAME}-se-${V}${EXTRACT_SUFX}

MULTI_PACKAGES=	-de -se
SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	:artwiz-aleczapka->=${V}:x11/artwiz-aleczapka
.endif

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-en-${V}/*.pcf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-de-${V}/*.de.pcf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-se-${V}/*.se.pcf ${INST_DIR}
	${X11BASE}/bin/mkfontscale ${INST_DIR}
	${X11BASE}/bin/mkfontdir ${INST_DIR}
	cd ${INST_DIR} && \
	sed -e 's/.pcf.gz//' fonts.dir|grep artwiz > fonts.alias-artwiz

.include <bsd.port.mk>
