# $OpenBSD: Makefile,v 1.10 2001/10/24 12:36:02 espie Exp $

DISTNAME=	gkrellm-1.2.2
HOMEPAGE=	http://www.gkrellm.net/
COMMENT=	"single process stack of system monitors"

CATEGORIES=	sysutils
NEED_VERSION=	1.474
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/ \
		ftp://rt.fm/pub/gkrellm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdk_imlib.19::graphics/imlib \
		gthread::devel/glib


USE_GMAKE=	Yes
USE_X11=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.include <bsd.port.mk>
