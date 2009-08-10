# $OpenBSD: Makefile,v 1.21 2009/08/10 06:34:30 kili Exp $
# $FreeBSD: Makefile,v 1.4 1997/03/10 12:07:35 asami Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS= amd64 arm i386 macppc sparc sparc64

COMMENT=	laptop battery status display for X11

DISTNAME=	xbatt-1.2.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c \
			pthread-stubs xcb

CONFIGURE_STYLE=	imake noman

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
