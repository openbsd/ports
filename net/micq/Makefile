# $OpenBSD: Makefile,v 1.6 2000/01/04 07:02:44 brad Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

DISTNAME=       micq-0.4.3
CATEGORIES=	net
MASTER_SITES=   ftp://micq.chatzone.org/pub/micq/V0.4.3/
EXTRACT_SUFX=	.tgz

MAINTAINER=	form@openbsd.org

NO_CONFIGURE=	yes

# Please uncoment one of the following lines to
# select micq language.

MICQ_LANG?=	ENGLISH
#MICQ_LANG?=	SPANISH
#MICQ_LANG?=	DUTCH
#MICQ_LANG?=	GERMAN
#MICQ_LANG?=	SWEDISH
#MICQ_LANG?=	CHINESE
#MICQ_LANG?=	RUSSIAN
#MICQ_LANG?=	ITALIAN
#MICQ_LANG?=	UKRAINIAN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micq
	${INSTALL_PROGRAM} ${WRKSRC}/micq ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} README CHANGELOG ${PREFIX}/share/doc/micq

.include <bsd.port.mk>
