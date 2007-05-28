# $OpenBSD: Makefile,v 1.1.1.1 2007/05/28 07:26:33 steven Exp $

COMMENT=	"allows deniable private conversations using Pidgin"

DISTNAME=	pidgin-otr-20070506
CATEGORIES=	security net

HOMEPAGE=	http://www.cypherpunks.ca/otr/ \
		http://www.xelerance.com/mirror/otr/

MASTER_SITES=	http://humppa.nl/distfiles/ # ${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pidgin->=2.0.0:net/pidgin
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	otr.>=3:libotr->=3.0.0p0:security/libotr

MODULES=	devel/gettext
WANTLIB=	gpg-error gcrypt

USE_X11=	Yes
USE_LIBTOOL=	Yes

SHARED_ONLY=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib "

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
BUILD_DEPENDS+=	:autoconf-${AUTOCONF_VERSION}*:devel/autoconf/${AUTOCONF_VERSION} \
		:automake-${AUTOMAKE_VERSION}*:devel/automake/${AUTOMAKE_VERSION} \

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -s -i

.include <bsd.port.mk>
