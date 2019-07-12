# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:07 sthen Exp $

COMMENT=	web search application

V=		1.4.5
PORTROACH=	limitw:1,even
DISTNAME=	xapian-omega-${V}
REVISION=	1

CATEGORIES=	www textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m uuid ${COMPILER_LIBCXX} z xapian pcre magic

MASTER_SITES=	https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# C++11
COMPILER=       base-clang ports-gcc base-gcc

LIB_DEPENDS=	databases/xapian-core>=${V} \
		devel/pcre \
		devel/libmagic

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

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
