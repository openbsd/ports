# $OpenBSD: Makefile,v 1.1.1.1 2013/10/05 06:45:37 sebastia Exp $

COMMENT =	GNUstep theme following NeXT look and feel

V =		0.1
DISTNAME =	Neos-${V}.theme
PKGNAME =	gnustep-neos-theme-${V}

HOMEPAGE =	http://gap.nongnu.org/themes/index.html
MASTER_SITES =	http://savannah.nongnu.org/download/gap/

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
MODGNUSTEP_NEEDS_BASE =	No
RUN_DEPENDS =		x11/gnustep/gui

NO_BUILD =	Yes
WRKSRC =	${WRKDIR}/Neos.theme

do-install:
	mkdir -p ${PREFIX}/lib/GNUstep/Themes
	find ${WRKSRC} -name CVS -type d | xargs rm -r
	cp -r ${WRKSRC} ${PREFIX}/lib/GNUstep/Themes

.include <bsd.port.mk>
