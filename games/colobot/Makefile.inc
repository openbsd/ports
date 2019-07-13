# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:26 sthen Exp $

V ?=			0.1.11.1

CATEGORIES ?=		games

HOMEPAGE ?=		https://colobot.info/

# GPLv3+
PERMIT_PACKAGE ?=	Yes

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

GH_ACCOUNT ?=		colobot
GH_TAGNAME ?=		colobot-gold-$V-alpha

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_DATA_DIR="${PREFIX}/share/colobot"
