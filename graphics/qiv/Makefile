# $OpenBSD: Makefile,v 1.5 2002/10/27 00:03:16 naddy Exp $

COMMENT=		"very small and pretty fast gdk/Imlib image viewer"

DISTNAME=		qiv-1.8
CATEGORIES=		graphics

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

NO_REGRESS=		Yes

.include <bsd.port.mk>
