# $OpenBSD: Makefile,v 1.7 2006/10/31 20:15:30 alek Exp $

COMMENT=	"Allows deniable private conversations using GAIM"

DISTNAME=	gaim-otr-3.0.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security net

HOMEPAGE=	http://www.cypherpunks.ca/otr/ \
		http://www.xelerance.com/mirror/otr/

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:gaim-2.0.0beta4:net/gaim
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	otr.>=3:libotr->=3.0.0p0:security/libotr \
		gcrypt.>=12:libgcrypt->=1.2:security/libgcrypt

MODULES=	devel/gettext
WANTLIB=	gpg-error

USE_X11=	Yes
USE_LIBTOOL=	Yes

SHARED_ONLY=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib "

.include <bsd.port.mk>
