# $OpenBSD: Makefile,v 1.16 2003/01/07 15:36:35 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.5a
DISTNAME=		kdegraphics-${VERSION}

LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

RUN_DEPENDS= :ghostscript-*:print/ghostscript/gnu

SEPARATE_BUILD=flavored

.include <bsd.port.mk>
