COMMENT=	web search application

V=		1.4.29
PORTROACH=	limitw:1,even
DISTNAME=	xapian-omega-${V}

CATEGORIES=	www textproc

HOMEPAGE=	https://xapian.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c iconv m magic pcre2-8 xapian z

SITES=		https://oligarchy.co.uk/xapian/${V}/
EXTRACT_SUFX=	.tar.xz

# C++11
COMPILER=       base-clang ports-gcc base-gcc

LIB_DEPENDS=	converters/libiconv \
		databases/xapian-core>=${V} \
		devel/pcre2 \
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
