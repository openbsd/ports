# $OpenBSD: Makefile,v 1.41 2013/12/19 13:19:09 zhuk Exp $

COMMENT=		new mail notification utility for KDE

DISTNAME=		kbiff-3.8
REVISION =		8
SHARED_LIBS=		kbiff 2.0
CATEGORIES=		mail
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		Stephan Tesch <stephan@tesch.cx>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2
WANTLIB += c expat fam fontconfig freetype idn m png pthread
WANTLIB += pthread-stubs stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient>=1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kbiff/}

RUN_DEPENDS=		x11/gtk+2,-guic
LIB_DEPENDS=		x11/kde/libs3

MODULES=        	x11/kde devel/gettext
MODKDE_FIXUP_DATADIR =	Yes

MAKE_ENV=		KDEDIR="${LOCALBASE}"
MAKE_FLAGS=		${MODKDE_MAKE_FLAGS}
USE_GROFF =		Yes

USE_GMAKE=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
CONFIGURE_STYLE= 	autoconf
AUTOCONF_VERSION=	2.59
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=		${MODKDE_CONFIGURE_ENV}

PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
