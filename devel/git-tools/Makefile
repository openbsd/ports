COMMENT =		assorted git tools, including git-restore-mtime

GH_ACCOUNT =		MestreLion
GH_PROJECT =		git-tools
GH_TAGNAME =		v2025.08

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

CATEGORIES =		devel

# GPLv3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/git \
			lang/python/3 \
			shells/bash

CONFIGURE_STYLE =	none

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/git-* ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man1/git-*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
