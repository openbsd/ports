# $OpenBSD: Makefile,v 1.3 2005/06/13 21:03:01 fgsch Exp $

COMMENT=	"Allows deniable private conversations using GAIM"

VERSION=	2.0.2
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
USE_LIBTOOL=	Yes

SHARED_ONLY=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib "

.include <bsd.port.mk>
