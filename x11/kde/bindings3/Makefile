# $OpenBSD: Makefile,v 1.5 2003/02/23 13:34:58 espie Exp $

COMMENT= 		"X11 toolkit, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1
DISTNAME=		kdebindings-${VERSION}

LIB_DEPENDS=kdecore.4,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmid,kparts,kscript,kspell,kutils,DCOP::x11/kde/libs3 \
	gtk,gdk::x11/gtk+ \
	lib/qt3/qui-mt:qt3-mt->=1.1p0:x11/qt3,mt

SEPARATE_BUILD=flavored

#post-patch:
#	cd ${WRKSRC}/smoke/qt && QTINCDIR=${MODQT_INCDIR} perl generate.pl

.include <bsd.port.mk>
