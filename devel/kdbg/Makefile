# $OpenBSD: Makefile,v 1.37 2013/10/22 11:34:13 zhuk Exp $

SHARED_ONLY=	Yes
COMMENT=	graphical debugger for KDE

DISTNAME=	kdbg-1.2.5
REVISION =	9
CATEGORIES=	devel
HOMEPAGE=	http://www.kdbg.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat
WANTLIB +=	fam fontconfig freetype idn
WANTLIB +=	m png pthread pthread-stubs stdc++ util xcb z
WANTLIB +=	${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB +=	${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kdbg/}

MODULES=	x11/kde devel/gettext

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3

CONFIGURE_STYLE= autoconf autoheader
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-kde-version=3
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

MODKDE_FIXUP_DATADIR=	Yes

.include <bsd.port.mk>
