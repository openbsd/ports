# $OpenBSD: Makefile,v 1.4 2001/05/27 00:38:30 naddy Exp $

DISTNAME=	gkrellm-1.0.8
HOMEPAGE=	http://www.gkrellm.net/
COMMENT=	"a single process stack of system monitors"

CATEGORIES=	sysutils
NEED_VERSION=	1.413
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
