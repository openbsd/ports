# $OpenBSD: Makefile,v 1.17 2016/03/10 21:58:52 naddy Exp $

COMMENT=		fast and light window manager with plug-ins

DISTNAME=		golem-0.0.5
REVISION=		2
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
