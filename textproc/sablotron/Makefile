# $OpenBSD: Makefile,v 1.5 2001/02/21 19:56:23 avsm Exp $

DISTNAME=		Sablot-0.51
PKGNAME=		sablotron-0.51
CATEGORIES=     	textproc
NEED_VERSION=		1.354

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.gingerall.cz/download/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV+=         CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
