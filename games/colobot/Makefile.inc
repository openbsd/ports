V ?=			0.1.12

CATEGORIES ?=		games

HOMEPAGE ?=		https://colobot.info/

# GPLv3+
PERMIT_PACKAGE ?=	Yes

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

GH_ACCOUNT ?=		colobot
GH_TAGNAME ?=		colobot-gold-$V-alpha

CONFIGURE_ARGS +=	-DCOLOBOT_INSTALL_DATA_DIR="${PREFIX}/share/colobot"
