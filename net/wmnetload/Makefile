# $OpenBSD: Makefile,v 1.3 2007/09/15 22:37:00 merdely Exp $

COMMENT=		wm-dockapp; simple network interface monitoring tool

DISTNAME=		wmnetload-1.3
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://freshmeat.net/projects/wmnetload

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c kvm m 

MASTER_SITES=		ftp://truffula.com/pub/

LIB_DEPENDS=		dockapp::devel/libdockapp

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-extract:
	@cd ${WRKSRC}/src && ln ifstat_netbsd.c ifstat_openbsd.c

.include <bsd.port.mk>
