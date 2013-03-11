# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:58 espie Exp $

COMMENT=		wm-dockapp; simple network interface monitoring tool

DISTNAME=		wmnetload-1.3
REVISION=		2
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://freshmeat.net/projects/wmnetload

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c kvm m pthread-stubs xcb dockapp

MASTER_SITES=		ftp://truffula.com/pub/

LIB_DEPENDS=		devel/libdockapp

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

post-extract:
	@cd ${WRKSRC}/src && ln ifstat_netbsd.c ifstat_openbsd.c

.include <bsd.port.mk>
