# $OpenBSD: Makefile,v 1.12 2002/10/28 21:44:32 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.4
DISTNAME=		kdegraphics-${VERSION}
PKGNAME=		${DISTNAME}

LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

RUN_DEPENDS= :ghostscript-*:print/ghostscript/gnu

SEPARATE_BUILD=simple

.include <bsd.port.mk>
