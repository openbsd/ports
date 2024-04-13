COMMENT ?=		${LANG} language pack for apertium

DISTNAME ?=		apertium-$L-$V

CATEGORIES ?=		textproc

HOMEPAGE ?=		https://www.apertium.org/

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE ?=	Yes

SITES ?=	https://github.com/apertium/apertium-$L/releases/download/v$V/

BUILD_DEPENDS +=	textproc/apertium \
			textproc/libxslt \
			textproc/lttoolbox

TEST_DEPENDS +=		textproc/apertium

CONFIGURE_STYLE ?=	gnu
