# $OpenBSD: Makefile,v 1.2 2003/02/02 13:29:57 espie Exp $

COMMENT= 		"X11 toolkit, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1
DISTNAME=		kdebindings-${VERSION}
BROKEN=			"need to resolve issue with qt3/qt3-mt (libqui)"

#LIB_DEPENDS=kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kscreensaver::x11/kde/libs3 \
    kwin::x11/kde/base3
SEPARATE_BUILD=flavored

#post-patch:
#	cd ${WRKSRC}/smoke/qt && QTINCDIR=${MODQT_INCDIR} perl generate.pl

.include <bsd.port.mk>
