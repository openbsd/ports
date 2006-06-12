# $OpenBSD: Makefile,v 1.3 2006/06/12 15:45:51 espie Exp $

COMMENT=	"terminal application that embeds Konsole for KDE"

DISTNAME=	quadkonsole-2.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 x11/kde

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=	ICE c Xrender stdc++ SM Xext pthread art_lgpl_2.5 util \
		jpeg m X11 z png iconv idn

MASTER_SITES=	http://nomis80.org/quadkonsole/

LIB_DEPENDS=	kdecore.6,DCOP,kwalletclient,kio,kparts,kdeui,kdefx,kdesu::x11/kde/libs3

MODULES=	x11/kde
MODKDE_VERSION=	3.3.0

MAKE_FLAGS+=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+=${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
