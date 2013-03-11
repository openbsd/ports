# $OpenBSD: Makefile,v 1.16 2013/03/11 11:46:12 espie Exp $

COMMENT=		fast and light window manager with plug-ins

DISTNAME=		golem-0.0.5
REVISION=		1
CATEGORIES=     	x11

HOMEPAGE=		http://golem.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=golem/}

CONFIGURE_STYLE=	autoconf dest no-autoheader
AUTOCONF_VERSION=	2.52

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/golem
	${INSTALL_DATA} ${WRKSRC}/{THEMES,PLUGINS} ${PREFIX}/share/doc/golem

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_FLAGS+=	--disable-plugins
.endif
