# $OpenBSD: Makefile,v 1.2 2001/03/17 18:25:42 naddy Exp $

DISTNAME=	gkrellm-1.0.7
HOMEPAGE=	http://web.wt.net/~billw/gkrellm/gkrellm.html

CATEGORIES=	sysutils
NEED_VERSION=	1.356
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/ \
		ftp://rt.fm/pub/gkrellm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdk_imlib.19::graphics/imlib

USE_GMAKE=	Yes
USE_X11=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.include <bsd.port.mk>
