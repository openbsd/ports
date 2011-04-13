# $OpenBSD: Makefile,v 1.2 2011/04/13 11:31:33 landry Exp $

COMMENT =	desktop bugzilla browser

DISTNAME =	deskzilla-lite-2_1
PKGNAME =	${DISTNAME:S/_/./}
EXTRACT_SUFX=	.zip

PKG_ARCH =	*

CATEGORIES =	productivity

HOMEPAGE =	http://almworks.com/deskzilla/
MASTER_SITES =	http://d1.almworks.com/.files

# http://almworks.com/eula.html
# permission to distribute granted by ALM Works in private mail
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	java
MODJAVA_VER =	1.7+

RUN_DEPENDS =	java/javaPathHelper
NO_REGRESS =	Yes
NO_BUILD =	Yes

do-install:
	rm -Rf ${WRKSRC}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/deskzilla/
	cd ${WRKSRC} && pax -rw * ${PREFIX}/share/deskzilla/
	echo '#!/bin/sh\n$$(javaPathHelper -c deskzilla) -jar' \
		'${TRUEPREFIX}/share/deskzilla/deskzilla.jar "$$@"' \
		 > ${PREFIX}/bin/deskzilla
	chmod +x ${PREFIX}/bin/deskzilla

.include <bsd.port.mk>
