# $OpenBSD: Makefile,v 1.9 2000/10/23 16:08:12 espie Exp $

DISTNAME=	snort-1.6.3
CATEGORIES=	net security
NEED_VERSION=	1.310
MASTER_SITES=	http://www.snort.org/Files/ \
		ftp://the.wiretapped.net/pub/security/network-intrusion-detection/snort/ \
		http://snort.safenetworks.com/Files/ 

HOMEPAGE=       http://www.snort.org/

MAINTAINER=	Kyle Hargraves <halogen@nol.net>

PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/snort
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/snort

.include <bsd.port.mk>
