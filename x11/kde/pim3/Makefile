# $OpenBSD: Makefile,v 1.4 2003/04/05 14:53:40 espie Exp $

COMMENT= 		"kde personal information applications"
COMMENT-kpilot=		"synch with palm pilot"
CATEGORIES=		x11 x11/kde productivity
VERSION=		3.1.1
DISTNAME=		kdepim-${VERSION}
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
