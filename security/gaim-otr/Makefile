# $OpenBSD: Makefile,v 1.1.1.1 2005/05/26 18:13:59 marius Exp $

COMMENT=	"Allows deniable private conversations using GAIM"

VERSION=	2.0.1
DISTNAME=	gaim-otr-${VERSION}
CATEGORIES=	security net

HOMEPAGE=	http://www.cypherpunks.ca/otr/ \
		http://www.xelerance.com/mirror/otr/

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::net/gaim
RUN_DEPENDS=	gaim::net/gaim
LIB_DEPENDS=	otr::security/libotr \
		gcrypt.12:libgcrypt->=1.2:security/libgcrypt

USE_X11=	Yes
MAKE_ENV=	GAIM_SOURCE="${LOCALBASE}/include/gaim" \
		LIBOTRINCDIR="${LOCALBASE}/include" \
		GAIMDIR="${LOCALBASE}/lib/gaim" \
		LIBOTRLIBDIR="${LOCALBASE}/lib"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
USE_GMAKE=	Yes

SHARED_ONLY=	Yes

.include <bsd.port.mk>
