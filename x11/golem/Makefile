# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:12 sthen Exp $

COMMENT=		fast and light window manager with plug-ins

DISTNAME=		golem-0.0.5
REVISION=		2
CATEGORIES=     	x11

HOMEPAGE=		http://golem.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=golem/}

CONFIGURE_STYLE=	autoconf dest no-autoheader
AUTOCONF_VERSION=	2.52

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/golem
	${INSTALL_DATA} ${WRKSRC}/{THEMES,PLUGINS} ${PREFIX}/share/doc/golem

.include <bsd.port.mk>
