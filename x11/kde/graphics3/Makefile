# $OpenBSD: Makefile,v 1.9 2002/09/01 08:25:25 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.3
DISTNAME=		kdegraphics-${VERSION}

#LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
#	kateinterfaces,konq,konqsidebarplugin::x11/kde/base3 \
#	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3
LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

SEPARATE_BUILD=simple

.include <bsd.port.mk>
