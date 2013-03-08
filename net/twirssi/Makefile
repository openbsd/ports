# $OpenBSD: Makefile,v 1.8 2013/03/08 13:38:25 ajacoutot Exp $

COMMENT=	Twitter script for irssi

V=		2.5.1
DISTNAME= 	twirssi-$V
CATEGORIES=	net

HOMEPAGE=	http://www.twirssi.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_ONLY=
EXTRACT_SUFX=	.pl

RUN_DEPENDS=	net/irssi \
		net/p5-Net-Twitter \
		www/p5-WWW-Shorten

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
