COMMENT =		modern terminal IRC client

MODGO_MODNAME =		git.sr.ht/~taiite/senpai
MODGO_VERSION =		v0.3.0
DISTNAME =		senpai-${MODGO_VERSION}

CATEGORIES =		net
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread
MODULES =		lang/go
BUILD_DEPENDS =		textproc/scdoc
RUN_DEPENDS =		devel/desktop-file-utils

USE_GMAKE =		yes
MAKE_FLAGS =		GIT=

post-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC} ${MAKE_FLAGS} \
		doc/senpai.{1,5}

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/senpai.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/senpai.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/senpai.desktop ${PREFIX}/share/applications

.include "modules.inc"
.include <bsd.port.mk>
