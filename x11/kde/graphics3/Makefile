# $OpenBSD: Makefile,v 1.18 2003/04/05 14:53:39 espie Exp $

COMMENT=		"X11 toolkit, graphic applications"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.1
DISTNAME=		kdegraphics-${VERSION}

LIB_DEPENDS=Imlib::graphics/imlib \
	ungif::graphics/libungif \
	kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3 \
	glut::graphics/glut

RUN_DEPENDS= :ghostscript-*:print/ghostscript/gnu

SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--without-kamera

.include <bsd.port.mk>
