# $OpenBSD: Makefile,v 1.17 2006/01/22 17:49:33 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"graphical debugger for KDE"

DISTNAME=	kdbg-1.2.5
CATEGORIES=	devel
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		art_lgpl_2.0.0 jpeg ICE SM X11 Xext Xrender c m \
			png pthread stdc++ util z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kdbg/}

MODULES=	x11/kde

LIB_DEPENDS=	kdecore.4,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf autoheader
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-kde-version=3

.include <bsd.port.mk>
