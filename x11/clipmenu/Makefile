COMMENT =	simple clipboard manager using dmenu

GH_ACCOUNT =	cdown
GH_PROJECT =	clipmenu
GH_TAGNAME =	6.2.0

CATEGORIES =	x11

MAINTAINER =	Thim Cederlund <thim@cederlund.de>

# Unlicense
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	shells/bash \
		sysutils/flock \
		sysutils/truncate \
		x11/clipnotify \
		x11/dmenu \
		x11/xsel

NO_TEST =	Yes
NO_BUILD =	Yes

do-install:
.for x in clipctl clipdel clipfsck clipmenu clipmenud
	${INSTALL_SCRIPT} ${WRKSRC}/$x ${PREFIX}/bin/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clipmenu/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/clipmenu/

.include <bsd.port.mk>
