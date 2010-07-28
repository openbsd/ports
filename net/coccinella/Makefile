# $OpenBSD: Makefile,v 1.6 2010/07/28 18:03:00 sebastia Exp $

SHARED_ONLY =		Yes

COMMENT =		XMPP client with whiteboard

DISTNAME =		Coccinella-0.96.18Src
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

# No dependencies to sound and telephony yet, due to the reason those
# need to be ported to sndio first
RUN_DEPENDS =		::devel/itcl \
			::graphics/tkpng \
			::graphics/tkimg \
			::misc/memchan \
			::net/tcludp \
			::security/tcltls \
			::x11/tkdnd \
			::x11/tkhtml \
			::x11/tktray \
			::x11/tktreectrl

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
	cd ${WRKSRC} ; tar cf - TclXML [c-z]* | \
		tar xf - -C ${PREFIX}/lib/coccinella/
	rm ${PREFIX}/lib/coccinella/lib/Init.tcl.*
	${INSTALL_SCRIPT} ${WRKSRC}/Coccinella.tcl ${PREFIX}/bin/coccinella
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccinella
	cd ${WRKSRC} && ${INSTALL_DATA} README.txt READMEs/README-xmpp \
		READMEs/README-sounds \
		${PREFIX}/share/doc/coccinella/ 

.include <bsd.port.mk>
