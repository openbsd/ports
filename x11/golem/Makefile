# $OpenBSD: Makefile,v 1.5 2002/05/31 17:14:35 couderc Exp $

COMMENT=		"Fast and light window manager with plug-ins"

DISTNAME=		golem-0.0.5
CATEGORIES=     	X11
NEED_VERSION=		1.531

HOMEPAGE=		http://golem.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=golem/}

USE_X11=		Yes

CONFIGURE_STYLE=	autoconf dest

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/golem
	${INSTALL_DATA} ${WRKSRC}/{THEMES,PLUGINS} ${PREFIX}/share/doc/golem

.include <bsd.port.mk>
.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_FLAGS+=	--disable-plugins
.endif
