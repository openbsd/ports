# $OpenBSD: Makefile,v 1.9 2019/07/17 14:49:22 danj Exp $

COMMENT-main=	improved artwiz fonts
COMMENT-de=	improved artwiz fonts (german pack)
COMMENT-se=	improved artwiz fonts (swedish pack)

V=		1.3
NAME=		artwiz-aleczapka
DISTNAME=	${NAME}-en-${V}
PKGNAME-main=	${NAME}-${V}
PKGNAME-de=	${NAME}-de-${V}
PKGNAME-se=	${NAME}-se-${V}
CATEGORIES=	fonts x11
USE_X11 =	Yes

REVISION-main=	7
REVISION-de=	6
REVISION-se=	6

HOMEPAGE=	http://artwizaleczapka.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=artwizaleczapka/}
EXTRACT_SUFX=	.tar.bz2

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INST_DIR=	${PREFIX}/share/fonts/artwiz-aleczapka

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${NAME}-de-${V}${EXTRACT_SUFX} \
		${NAME}-se-${V}${EXTRACT_SUFX}

MULTI_PACKAGES=	-main -de -se

RUN_DEPENDS-de=	${BASE_PKGPATH}>=${V}
RUN_DEPENDS-se=	${BASE_PKGPATH}>=${V}

do-install:
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf' ${WRKSRC}/fonts.dir | \
		grep '\-artwiz-' | \
		sed 's/\.pcf//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-en-${V}/*.pcf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-de-${V}/*.de.pcf ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/${NAME}-se-${V}/*.se.pcf ${INST_DIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${INST_DIR}/fonts.alias-artwiz

.include <bsd.port.mk>
