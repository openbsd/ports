# Ports collection makefile for:	xbatt
# Version required:	1.2
# Date created:		22 July 1998
# Whom:			Niklas Hallqvist <niklas@openbsd.org>
#
# $OpenBSD: Makefile,v 1.9 2002/03/21 21:25:53 espie Exp $
# $FreeBSD: Makefile,v 1.4 1997/03/10 12:07:35 asami Exp $
#

COMMENT=	"laptop battery status display for X11"

DISTNAME=	xbatt-1.2.1
CATEGORIES=	sysutils x11
NEED_VERSION=	1.515
MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake noman
ONLY_FOR_ARCHS=	i386 macppc

.include <bsd.port.mk>
