COMMENT=	Crosswire's Bible study utility

V=		1.9.0
DISTNAME=	sword-${V}
CATEGORIES=	textproc books
REVISION=	0

SITES=		https://crosswire.org/ftpmirror/pub/sword/source/v${V:R}/
SITES.k=	https://crosswire.org/ftpmirror/pub/sword/packages/rawzip/

# keeps changing
DISTFILES.k+=	KJV-2.10.2{KJV}.zip

SHARED_LIBS=	sword 0.0

HOMEPAGE=	https://crosswire.org/sword/software/
MAINTAINER=	Corey Stephan <corey.stephan@stthom.edu>

# sword: GPLv2 only  kjv: free for any purpose
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c clucene-core clucene-shared crypto
WANTLIB += curl icudata icui18n icuio icuuc m nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_quictls ssl xapian z

COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	devel/cppunit

# XXX clucene should be disabled, xapian is used in preference,
# but it seems the autoconf script needs modifying to allow building
# without linking to a detected library
LIB_DEPENDS=	databases/xapian-core \
		net/curl \
		textproc/clucene \
		textproc/icu4c

CONFIGURE_STYLE=gnu
USE_GMAKE=	yes
SHARE_DIR=	${PREFIX}/share/sword

post-install:
	${INSTALL_DATA_DIR} ${SHARE_DIR}/mods.d/
	${INSTALL_DATA_DIR} ${SHARE_DIR}/modules/texts/ztext/kjv/
	${INSTALL_DATA} ${WRKDIR}/mods.d/* ${SHARE_DIR}/mods.d
	${INSTALL_DATA} ${WRKDIR}/modules/texts/ztext/kjv/* \
	    ${SHARE_DIR}/modules/texts/ztext/kjv/
	mv ${WRKINST}/etc/sword.conf ${SHARE_DIR}/

.include <bsd.port.mk>
