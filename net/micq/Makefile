# $OpenBSD: Makefile,v 1.14 2001/02/23 10:23:40 fgsch Exp $
# $FreeBSD: Makefile,v 1.6 1999/06/03 08:31:06 ache Exp $

DISTNAME=       micq-${VERSION}
VERSION=	0.4.6
CATEGORIES=	net
MASTER_SITES=   ftp://micq.chatzone.org/pub/micq/V${VERSION}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

HOMEPAGE=	http://phantom.iquest.net/micq/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Please uncoment one of the following lines to
# select micq language.

#MICQ_LANG?=	BRAZIL
#MICQ_LANG?=	BULGARIAN
#MICQ_LANG?=	CHINESE
#MICQ_LANG?=	CROATIAN
#MICQ_LANG?=	DUTCH
MICQ_LANG?=	ENGLISH
#MICQ_LANG?=	FRENCH
#MICQ_LANG?=	GERMAN
#MICQ_LANG?=	ITALIAN
#MICQ_LANG?=	POLISH
#MICQ_LANG?=	RUSSIAN
#MICQ_LANG?=	SERBOCROATIAN
#MICQ_LANG?=	SPANISH
#MICQ_LANG?=	SWEDISH
#MICQ_LANG?=	UKRAINIAN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/micq
	${INSTALL_PROGRAM} ${WRKSRC}/micq ${PREFIX}/bin
.for f in CHANGELOG README Readme_SOCKS5
	${INSTALL_DATA} ${WRKBUILD}/${f} ${PREFIX}/share/doc/micq
.endfor

.include <bsd.port.mk>
