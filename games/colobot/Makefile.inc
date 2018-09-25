# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/09/25 08:53:04 bentley Exp $


V ?=			0.1.11.1

CATEGORIES ?=		games

HOMEPAGE ?=		https://colobot.info/

# GPLv3+
PERMIT_PACKAGE_CDROM ?=	Yes

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

GH_ACCOUNT ?=		colobot
GH_TAGNAME ?=		colobot-gold-$V-alpha

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_DATA_DIR="${PREFIX}/share/colobot"
