# $OpenBSD: Makefile,v 1.23 2019/01/29 23:40:14 sthen Exp $

COMMENT=	G.729a voice codec for Asterisk
DISTNAME=	asterisk-g72x-1.4.3
REVISION=	0
PKGNAME=	${DISTNAME:S/g72x/g729/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	telephony
MASTER_SITES=	http://asterisk.hosting.lv/src/

HOMEPAGE=	http://asterisk.hosting.lv/

# GPL frontend to patented algorithm; free to use for non-commercial purposes
PERMIT_DISTFILES_FTP=	contains non-compiled proprietary Intel code
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += bcg729

NO_TEST=	Yes

# keep in sync with telephony/asterisk
COMPILER=	base-gcc ports-gcc

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

BUILD_DEPENDS=	${RUN_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool # m4
RUN_DEPENDS=	telephony/asterisk>=16.0,<=17.0
LIB_DEPENDS=	telephony/bcg729

CONFIGURE_STYLE=  gnu
CONFIGURE_ARGS+= --with-asterisk-includes=${LOCALBASE}/include \
		--with-asterisk160 \
		--with-bcg729
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh

# to build astconv (when fixed for ast13+ API):
# cd ${WRKSRC}; ${MAKE_PROGRAM} astconv CPPFLAGS=-I${LOCALBASE}/include \
#	    CFLAGS="${CFLAGS} -D_GNU_SOURCE -Wall -rdynamic" LDFLAGS=-lm

.include <bsd.port.mk>
