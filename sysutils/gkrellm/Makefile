# vim:ts=8
# $OpenBSD: Makefile,v 1.5 2001/08/01 20:24:37 naddy Exp $

DISTNAME=	gkrellm-1.2.0
HOMEPAGE=	http://www.gkrellm.net/
COMMENT=	"a single process stack of system monitors"

CATEGORIES=	sysutils
NEED_VERSION=	1.433
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
