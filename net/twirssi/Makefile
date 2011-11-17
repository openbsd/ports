# $OpenBSD: Makefile,v 1.7 2011/11/17 23:52:38 jasper Exp $

COMMENT=	Twitter script for irssi

V=		2.5.0
DISTNAME= 	twirssi-$V
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

RUN_DEPENDS=	net/irssi \
		net/p5-Net-Twitter

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

SCRIPT_DATA_DIR=	${PREFIX}/share/twirssi

SUBST_VARS=		SCRIPT_DATA_DIR

do-install:
	${INSTALL_DATA_DIR} ${SCRIPT_DATA_DIR}
	${INSTALL_SCRIPT} ${FULLDISTDIR}/twirssi-$V.pl \
		${SCRIPT_DATA_DIR}/twirssi.pl

.include <bsd.port.mk>
