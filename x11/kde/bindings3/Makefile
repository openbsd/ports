# $OpenBSD: Makefile,v 1.4 2003/02/09 19:24:06 espie Exp $

COMMENT= 		"X11 toolkit, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1
DISTNAME=		kdebindings-${VERSION}

LIB_DEPENDS=kdecore.4,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmid,kparts,kscript,kspell,kutils,DCOP::x11/kde/libs3 \
	gtk,gdk::x11/gtk+ \
	qt3/qui-mt:qt3-mt->=1.1p0:x11/qt3,mt

SEPARATE_BUILD=flavored

#post-patch:
#	cd ${WRKSRC}/smoke/qt && QTINCDIR=${MODQT_INCDIR} perl generate.pl

.include <bsd.port.mk>
