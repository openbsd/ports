# $OpenBSD: Makefile,v 1.2 2001/07/20 09:41:46 lebel Exp $

COMMENT=		"very small and pretty fast gdk/Imlib image viewer"

DISTNAME=		qiv-1.7
CATEGORIES=		graphics
NEED_VERSION=		1.364

EXTRACT_SUFX=		-src.tgz

HOMEPAGE=		http://www.klografx.net/qiv/

MASTER_SITES=		http://www.klografx.net/qiv/download/

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

.include <bsd.port.mk>
