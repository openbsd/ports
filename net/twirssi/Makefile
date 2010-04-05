# $OpenBSD: Makefile,v 1.1.1.1 2010/04/05 21:17:14 xsa Exp $

COMMENT=	Twitter script for irssi

V=		2.4.1
DISTNAME= 	twirssi
DIST_SUBDIR=	${V}
PKGNAME=	${DISTNAME}-${V}
CATEGORIES=	net

HOMEPAGE=	http://www.twirssi.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_ONLY=
EXTRACT_SUFX=	.pl

RUN_DEPENDS=	:irssi-*:net/irssi \
		::net/p5-Net-Twitter

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

SCRIPT_DATA_DIR=	${PREFIX}/share/twirssi

SUBST_VARS=	SCRIPT_DATA_DIR

do-install:
	${INSTALL_DATA_DIR} ${SCRIPT_DATA_DIR}
	${INSTALL_SCRIPT} ${FULLDISTDIR}/twirssi.pl ${SCRIPT_DATA_DIR}

.include <bsd.port.mk>
