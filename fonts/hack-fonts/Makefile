COMMENT =		typeface designed for source code

MODFONT_FAMILY =	hack-fonts
MODFONT_VERSION =	3.003
DISTNAME =		Hack-v${MODFONT_VERSION}-ttf

HOMEPAGE =		https://sourcefoundry.org/hack/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/source-foundry/Hack/releases/download/v${MODFONT_VERSION}/

MODULES =		font

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes
NO_TEST =		Yes

MODFONT_FONTDIR =	${PREFIX}/share/fonts/Hack
MODFONT_FONTFILES =	ttf/*.ttf

.include <bsd.port.mk>
