# $OpenBSD: Makefile,v 1.9 2003/12/15 21:23:20 brad Exp $

COMMENT= 		"KDE personal information applications"
COMMENT-kpilot=		"synch with palm pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.1.4
DISTNAME=		kdepim-${VERSION}
PKGNAME=		${DISTNAME}p1

LIB_DEPENDS= 		kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,kio,kparts,vcard::x11/kde/libs3

BUILD_DEPENDS=	::comms/pilot-link

MULTI_PACKAGES=-kpilot
FULLPKGNAME-kpilot = kpilot-${VERSION}
SUBPACKAGE?=
.if ${SUBPACKAGE} == "-kpilot"
LIB_DEPENDS+=	pisock::comms/pilot-link
.endif

SEPARATE_BUILD=	flavored
.include <bsd.port.mk>
