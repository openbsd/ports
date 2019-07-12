# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:51 sthen Exp $

COMMENT=	Twitter script for irssi

V=		2.6.3
DISTNAME=	twirssi-$V
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	http://www.twirssi.com/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://nerd.hu/distfiles/
EXTRACT_ONLY=
EXTRACT_SUFX=	.pl

RUN_DEPENDS=	converters/p5-JSON-Any \
		net/irssi \
		net/p5-Net-Twitter \
		www/p5-LWP-Protocol-https \
		www/p5-WWW-Shorten

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

SCRIPT_DATA_DIR=	${PREFIX}/share/twirssi
SUBST_VARS=		SCRIPT_DATA_DIR

do-install:
	${INSTALL_DATA_DIR} ${SCRIPT_DATA_DIR}
	${INSTALL_SCRIPT} ${FULLDISTDIR}/twirssi-$V.pl \
		${SCRIPT_DATA_DIR}/twirssi.pl

.include <bsd.port.mk>
