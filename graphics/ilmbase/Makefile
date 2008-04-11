# $OpenBSD: Makefile,v 1.1.1.1 2008/04/11 11:06:26 jasper Exp $

COMMENT=		ILM Base libraries

DISTNAME=		ilmbase-1.0.1
SHARED_LIBS +=	Half                 0.0      # .6.0
SHARED_LIBS +=	Iex                  0.0      # .6.0
SHARED_LIBS +=	Imath                0.0      # .6.0
SHARED_LIBS +=	IlmThread            0.0      # .6.0
CATEGORIES=		graphics

HOMEPAGE=		http://www.openexr.com/

# Almost BSD
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.savannah.nongnu.org/releases/openexr/

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
