# $OpenBSD: Makefile,v 1.11 2003/01/19 02:27:30 brad Exp $

COMMENT=	"graphical debugger for KDE"

DISTNAME=	kdbg-1.2.5
CATEGORIES=	devel
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kdbg/}

MODULES=	qt3
MODQT_MT=	Yes

LIB_DEPENDS=	kdecore.4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include" \
		--with-extra-libs="${LOCALBASE}/lib" \
		--with-kde-version=3

.include <bsd.port.mk>
