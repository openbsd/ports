# $OpenBSD: Makefile,v 1.6 2002/05/23 14:37:22 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0.1
DISTNAME=		kdegraphics-${VERSION}

#LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
#	kateinterfaces,konq,konqsidebarplugin::x11/kde/base3 \
#	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3
LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

.include <bsd.port.mk>
