# $OpenBSD: Makefile,v 1.1.1.1 2000/07/07 03:39:38 kevlo Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

DISTNAME=	lzop-1.00
CATEGORIES=     archivers
NEED_VERSION=	1.310
HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzop.html

MAINTAINER=	danh@nfol.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo-download/

LIB_DEPENDS=    lzo.1::archivers/lzo

SEPARATE_BUILD= concurrent

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+= CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
               	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
