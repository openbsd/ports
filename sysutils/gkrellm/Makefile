# $OpenBSD: Makefile,v 1.13 2001/11/02 17:52:59 jcs Exp $

DISTNAME=	gkrellm-1.2.4
HOMEPAGE=	http://www.gkrellm.net/
COMMENT=	"single process stack of system monitors"

CATEGORIES=	sysutils
NEED_VERSION=	1.488
MAINTAINER=	Joshua Stein <jcs@rt.fm>

MASTER_SITES=	http://web.wt.net/~billw/gkrellm/ \
		ftp://rt.fm/pub/gkrellm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		gdk_imlib.19::graphics/imlib

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

ALL_TARGET=	openbsd
INSTALL_TARGET=	install_openbsd

.include <bsd.port.mk>
