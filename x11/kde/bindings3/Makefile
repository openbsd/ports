# $OpenBSD: Makefile,v 1.11 2004/02/07 01:46:23 espie Exp $

COMMENT= 		"X11 toolkit, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.2.0
DISTNAME=		kdebindings-${VERSION}
MODKDE_VERSION=		3.2

LIB_DEPENDS=DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmid,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3 \

SEPARATE_BUILD=flavored

#post-patch:
#	cd ${WRKSRC}/smoke/qt && QTINCDIR=${MODQT_INCDIR} perl generate.pl

.include <bsd.port.mk>
