# $OpenBSD: Makefile,v 1.3 2003/02/09 19:18:05 espie Exp $

COMMENT= 		"X11 toolkit, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1
DISTNAME=		kdebindings-${VERSION}

#LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3 \
    kwin::x11/kde/base3
SEPARATE_BUILD=flavored

#post-patch:
#	cd ${WRKSRC}/smoke/qt && QTINCDIR=${MODQT_INCDIR} perl generate.pl

.include <bsd.port.mk>
