# $OpenBSD: Makefile,v 1.5 2000/08/29 17:42:10 brad Exp $
# $FreeBSD: ports/archivers/lzop/Makefile,v 1.3 2000/06/22 05:51:49 will Exp $

DISTNAME=	lzop-1.00
CATEGORIES=	archivers
NEED_VERSION=	1.320
MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo-download/

HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzop.html

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
