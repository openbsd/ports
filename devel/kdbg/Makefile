# $OpenBSD: Makefile,v 1.12 2003/02/11 05:37:18 brad Exp $

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

MODULES=	kde

LIB_DEPENDS=	kdecore.4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-kde-version=3

.include <bsd.port.mk>
