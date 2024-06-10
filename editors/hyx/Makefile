COMMENT =	minimal cli hex editor with Vim-like keybindings

DISTNAME =	hyx-2021.06.09

CATEGORIES =	editors

HOMEPAGE =	https://yx7.cc/code

MAINTAINER =	Thim Cederlund <thim@cederlund.de>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	c

SITES =		https://yx7.cc/code/hyx/
EXTRACT_SUFX =	.tar.xz

USE_GMAKE =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hyx ${PREFIX}/bin

.include <bsd.port.mk>
