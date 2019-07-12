# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:52 sthen Exp $

COMMENT=		wm-dockapp; simple network interface monitoring tool

DISTNAME=		wmnetload-1.3
REVISION=		4
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://freshmeat.net/projects/wmnetload

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c m dockapp

MASTER_SITES=		ftp://truffula.com/pub/

LIB_DEPENDS=		devel/libdockapp

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

post-extract:
	@cd ${WRKSRC}/src && ln ifstat_netbsd.c ifstat_openbsd.c

.include <bsd.port.mk>
