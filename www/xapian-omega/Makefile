# $OpenBSD: Makefile,v 1.5 2010/09/23 12:51:13 ajacoutot Exp $

COMMENT=	web search application

V=		1.2.3
DISTNAME=	xapian-omega-${V}

CATEGORIES=	www textproc

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m e2fs-uuid stdc++ z xapian pcre

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

USE_LIBTOOL=	Yes

LIB_DEPENDS=	:xapian-core->=1.2.3:databases/xapian-core \
		::devel/pcre

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xapian-omega \
		pkglibbindir=${PREFIX}/libexec/xapian-omega/cgi-bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/godmode ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/opensearch ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/query ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/topterms ${PREFIX}/share/omega/templates
	${INSTALL_DATA} ${WRKBUILD}/templates/xml ${PREFIX}/share/omega/templates
	${INSTALL_DATA_DIR} ${PREFIX}/share/omega/templates/inc
	${INSTALL_DATA} ${WRKBUILD}/templates/inc/* ${PREFIX}/share/omega/templates/inc

.include <bsd.port.mk>
