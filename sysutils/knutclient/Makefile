# $OpenBSD: Makefile,v 1.1.1.1 2003/04/17 09:18:56 wilfried Exp $

COMMENT=		"KDE UPS Monitoring tool"

RELEASE=		0.6.0
DISTNAME=		knutclient-${RELEASE}
CATEGORIES=		sysutils x11 x11/kde

HOMEPAGE=		http://www.alo.cz/knutclient-pop-en.html

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.buzuluk.cz/pub/alo/knutclient/
EXTRACT_SUFX=		.tar.gz

# Patch Hack
MODKDE_VERSION=		NoPatch
MODULES=		kde

LIB_DEPENDS=		DCOP,kdecore.4,kdefx,kdeui::x11/kde/libs3 \
			art_lgpl_2::graphics/libart

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_ENV=		${CONFIGURE_ENV}

.include <bsd.port.mk>
