# $OpenBSD: Makefile,v 1.11 2001/10/29 03:15:39 jcs Exp $

DISTNAME=	gkrellm-1.2.2
HOMEPAGE=	http://www.gkrellm.net/
COMMENT=	"single process stack of system monitors"

CATEGORIES=	sysutils
NEED_VERSION=	1.487
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/ \
		ftp://rt.fm/pub/gkrellm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gtk
LIB_DEPENDS+=	gdk_imlib.19::graphics/imlib

USE_GMAKE=	Yes
USE_X11=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.include <bsd.port.mk>
