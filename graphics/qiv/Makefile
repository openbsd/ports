# $OpenBSD: Makefile,v 1.3 2002/03/21 20:57:09 espie Exp $

COMMENT=		"very small and pretty fast gdk/Imlib image viewer"

DISTNAME=		qiv-1.7
CATEGORIES=		graphics
NEED_VERSION=		1.515

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
