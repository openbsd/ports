# $OpenBSD: Makefile,v 1.10 2002/09/28 22:50:29 brad Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.0.3
DISTNAME=		kdegraphics-${VERSION}
PKGNAME=		${DISTNAME}p1

LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3

SEPARATE_BUILD=simple

.include <bsd.port.mk>
