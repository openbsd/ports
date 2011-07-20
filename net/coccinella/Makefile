# $OpenBSD: Makefile,v 1.11 2011/07/20 16:43:18 sebastia Exp $

SHARED_ONLY =		Yes

COMMENT =		XMPP client with whiteboard

REVISION =		2
DISTNAME =		Coccinella-0.96.20Src
PKGNAME =		${DISTNAME:S/Src$//:L}
CATEGORIES =		net

HOMEPAGE =		http://www.coccinella.im
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=coccinella/}	

MODULES =		x11/tk
RUN_DEPENDS =		audio/snack \
			devel/itcl \
			graphics/tkpng \
			graphics/tkimg \
			misc/memchan \
			net/tcludp \
			security/tcltls \
			telephony/iaxclient,-tcl \
			x11/tkdnd \
			x11/tkhtml \
			x11/tktray \
			x11/tktreectrl

NO_BUILD =		Yes
NO_REGRESS =		Yes
SEPARATE_BUILD =	simple
COCCINELLALIB =		${LOCALBASE}/lib/coccinella
SUBST_VARS =		COCCINELLALIB

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/Coccinella.tcl
	${SUBST_CMD} ${WRKSRC}/Coccinella.tcl \
		${WRKSRC}/lib/Init.tcl
	
do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/lib/coccinella
	cd ${WRKSRC} && find TclXML [c-z]* -type d -exec ${INSTALL_DATA_DIR} \
				${PREFIX}/lib/coccinella/{} \; && \
		find TclXML [c-z]* ! -type d -exec ${INSTALL_DATA} {} \
				${PREFIX}/lib/coccinella/{} \; && \
		${INSTALL_DATA} pkgIndex.tcl ${PREFIX}/lib/coccinella
	rm ${PREFIX}/lib/coccinella/lib/Init.tcl.* \
		${PREFIX}/lib/coccinella/show_own_jid.patch
	${INSTALL_SCRIPT} ${WRKSRC}/Coccinella.tcl ${PREFIX}/lib/coccinella
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} ${FILESDIR}/coccinella \
				${PREFIX}/bin/coccinella
	chmod 755 ${PREFIX}/bin/coccinella
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccinella
	cd ${WRKSRC} && ${INSTALL_DATA} README.txt READMEs/README-xmpp \
		READMEs/README-sounds \
		${PREFIX}/share/doc/coccinella/ 

.include <bsd.port.mk>
