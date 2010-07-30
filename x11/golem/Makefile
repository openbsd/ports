# $OpenBSD: Makefile,v 1.11 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=		fast and light window manager with plug-ins

DISTNAME=		golem-0.0.5
REVISION=		0
CATEGORIES=     	x11

HOMEPAGE=		http://golem.sourceforge.net/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=golem/}

USE_X11=		Yes

CONFIGURE_STYLE=	autoconf dest no-autoheader
AUTOCONF_VERSION=	2.52

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/golem
	${INSTALL_DATA} ${WRKSRC}/{THEMES,PLUGINS} ${PREFIX}/share/doc/golem

.include <bsd.port.mk>
.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_FLAGS+=	--disable-plugins
.endif
