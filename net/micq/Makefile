# $OpenBSD: Makefile,v 1.4 1999/09/15 13:03:35 form Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

DISTNAME=       micq-0.4.2
CATEGORIES=	net
MASTER_SITES=   ftp://micq.chatzone.org/pub/micq/V0.4.2/
EXTRACT_SUFX=	.tgz

MAINTAINER=	form@openbsd.org

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
		${INSTALL_PROGRAM} ${WRKSRC}/micq ${PREFIX}/bin
		${MKDIR} ${PREFIX}/share/doc/micq
.for file in README CHANGELOG
		${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/micq
.endfor

.include <bsd.port.mk>
