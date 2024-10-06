COMMENT =	plain-text driven engine for personal wikis

MODGO_MODNAME =	github.com/bouncepaw/mycorrhiza
MODGO_VERSION =	v1.15.1

DISTNAME =	mycorrhiza-${MODGO_VERSION}

CATEGORIES =	www

HOMEPAGE =	https://mycorrhiza.wiki

MAINTAINER =	la ninpre <aaoth@aaoth.xyz>

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

RUN_DEPENDS =		devel/git

post-install:
	${INSTALL_MAN} ${WRKSRC}/help/mycorrhiza.1 ${PREFIX}/man/man1/

.include "modules.inc"

.include <bsd.port.mk>
