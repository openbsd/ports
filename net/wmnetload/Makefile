# $OpenBSD: Makefile,v 1.11 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; simple network interface monitoring tool

DISTNAME=		wmnetload-1.3
REVISION=		2
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://freshmeat.net/projects/wmnetload

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c kvm m pthread-stubs xcb dockapp

MASTER_SITES=		ftp://truffula.com/pub/

LIB_DEPENDS=		devel/libdockapp

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-extract:
	@cd ${WRKSRC}/src && ln ifstat_netbsd.c ifstat_openbsd.c

.include <bsd.port.mk>
