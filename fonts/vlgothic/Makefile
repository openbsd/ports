# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:13 sthen Exp $

COMMENT =	Japanese gothic TrueType fonts from Vine Linux

V =		20141206
DISTNAME =	VLGothic-$V
PKGNAME =	vlgothic-$V
REVISION =	0

CATEGORIES =	fonts japanese x11

HOMEPAGE =	http://vlgothic.dicey.org/

#BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES =		${MASTER_SITE_OSDN_JP:=vlgothic/62375/}
EXTRACT_SUFX =		.tar.bz2

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

INST_DIR=		${PREFIX}/share/fonts/vlgothic/
DOC_DIR=		${PREFIX}/share/doc/vlgothic/
FONTSDIR=		${WRKDIR}/VLGothic/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${FONTSDIR}/*.ttf ${INST_DIR}
	${INSTALL_DATA} ${FONTSDIR}/Changelog ${DOC_DIR}
	${INSTALL_DATA} ${FONTSDIR}/LICENSE* ${DOC_DIR}
	${INSTALL_DATA} ${FONTSDIR}/README* ${DOC_DIR}

.include <bsd.port.mk>
