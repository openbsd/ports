# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:54 sthen Exp $

COMMENT=	mount SMB shares from userland via FUSE

DISTNAME=	usmb-20130204
REVISION=	6

CATEGORIES=	sysutils

HOMEPAGE=	http://ametros.net/code.html

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  c fuse glib-2.0 iconv intl pthread smbclient xml2

# http://repo.or.cz/w/usmb.git/snapshot/aa94e132c12faf1a00f547ea4a96b5728612dea6.tar.gz
MASTER_SITES=	https://spacehopper.org/mirrors/

BUILD_DEPENDS=	textproc/gsed
LIB_DEPENDS=	devel/glib2 \
		net/samba \
		textproc/libxml

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-samba=${LOCALBASE}
CONFIGURE_ENV =	CFLAGS="`pkg-config --cflags smbclient`" \
		LDFLAGS="`pkg-config --libs smbclient`"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/usmb/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/usmb/
	${INSTALL_DATA} ${WRKSRC}/usmb.conf ${PREFIX}/share/examples/usmb/

.include <bsd.port.mk>
