# $OpenBSD: Makefile,v 1.14 2004/04/13 04:22:37 brad Exp $

COMMENT= 		"KDE personal information applications"
COMMENT-kpilot=		"KDE interface to sync with Palm Pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.2.1
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.2

LIB_DEPENDS= 		kdecore.6,DCOP,kabc,kabc_file,kdefx,kdeprint,kdesasl,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,kutils,kwalletclient,vcard::x11/kde/libs3


MULTI_PACKAGES=-kpilot
FULLPKGNAME-kpilot = kpilot-${VERSION}
SUBPACKAGE?=

.if !defined(PACKAGING) || ${SUBPACKAGE} == "-kpilot"
LIB_DEPENDS+=	pisock::comms/pilot-link
.endif
# for kaddressbook
.if defined(PACKAGING) && ${SUBPACKAGE} == ""
RUN_DEPENDS+=	::x11/kde/base3
.endif

SEPARATE_BUILD=	flavored
.include <bsd.port.mk>
