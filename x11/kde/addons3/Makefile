# $OpenBSD: Makefile,v 1.4 2002/04/10 01:24:39 espie Exp $

COMMENT=		"X11 toolkit, addons"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kdeaddons-${VERSION}

LIB_DEPENDS= kdecore.4,DCOP,artskde,kdeui,khtml,kio,kparts::x11/kde/libs3 \
	kateinterfaces,konq,konqsidebarplugin::x11/kde/base3 \
	kmedia2_idl,qtmcop,soundserver_idl::x11/kde/arts3

.include <bsd.port.mk>
