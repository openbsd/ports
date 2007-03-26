# $OpenBSD: Makefile,v 1.15 2007/03/26 07:20:58 robert Exp $
# $FreeBSD: Makefile,v 1.4 1997/03/10 12:07:35 asami Exp $

COMMENT=	"laptop battery status display for X11"

DISTNAME=	xbatt-1.2.1
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c 

CONFIGURE_STYLE=	imake noman
ONLY_FOR_ARCHS=		arm i386 macppc sparc

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
