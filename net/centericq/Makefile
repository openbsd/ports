# $OpenBSD: Makefile,v 1.1.1.1 2001/03/09 09:43:21 reinhard Exp $

DISTNAME=	centericq-3.20.5
CATEGORIES=	net	
NEED_VERSION=	1.359
MASTER_SITES=	http://download.konst.org.ua/ \
		${MASTER_SITE_FREEBSD} \
		http://konst.org.ua/download/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PREFIX="${PREFIX}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/centericq ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/centericq
	${INSTALL_DATA} ${WRKSRC}/share/*.wav ${PREFIX}/share/centericq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/centericq

.include <bsd.port.mk>
