COMMENT =	notify on X clipboard events

GH_ACCOUNT =	cdown
GH_PROJECT =	clipnotify
GH_TAGNAME =	1.0.2

CATEGORIES =	x11

MAINTAINER =	Thim Cederlund <thim@cederlund.de>

# Unlicense
PERMIT_PACKAGE =	Yes

WANTLIB = X11 Xfixes c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/clipnotify ${PREFIX}/bin/

.include <bsd.port.mk>
