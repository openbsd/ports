# $OpenBSD: Makefile,v 1.4 2009/08/10 06:33:44 kili Exp $

COMMENT=		wm-dockapp; simple network interface monitoring tool

DISTNAME=		wmnetload-1.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://freshmeat.net/projects/wmnetload

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c kvm m pthread-stubs xcb

MASTER_SITES=		ftp://truffula.com/pub/

LIB_DEPENDS=		dockapp::devel/libdockapp

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-extract:
	@cd ${WRKSRC}/src && ln ifstat_netbsd.c ifstat_openbsd.c

.include <bsd.port.mk>
