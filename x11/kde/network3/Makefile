# $OpenBSD: Makefile,v 1.9 2002/11/29 14:18:16 brad Exp $

COMMENT= 		"X11 toolkit, network applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.4
DISTNAME=		kdenetwork-${VERSION}
PKGNAME=		${DISTNAME}p1

LIB_DEPENDS= kdecore.4,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,vcard::x11/kde/libs3

SEPARATE_BUILD=	simple
# for kaddressbook
RUN_DEPENDS+=	::x11/kde/base3

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
