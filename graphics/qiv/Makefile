# $OpenBSD: Makefile,v 1.7 2004/09/15 00:40:23 pvalchev Exp $

COMMENT=		"very small and pretty fast gdk/Imlib image viewer"

DISTNAME=		qiv-1.8
CATEGORIES=		graphics

EXTRACT_SUFX=		-src.tgz

HOMEPAGE=		http://www.klografx.net/qiv/

MASTER_SITES=		http://www.klografx.net/qiv/download/

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
