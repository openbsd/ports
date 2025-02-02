COMMENT=	full text search plugin for Dovecot using Xapian

V=		1.7.16
DISTNAME=	dovecot-fts-xapian-$V
SITES=		https://github.com/grosjo/fts-xapian/releases/download/$V/
WRKDIST=	${WRKDIR}/fts-xapian-$V

CATEGORIES=	mail

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} icudata icui18n icuio icuuc m sqlite3 xapian z

# C++20
COMPILER=	base-clang ports-clang

DEBUG_PACKAGES=	${BUILD_PACKAGES}
BUILD_DEPENDS=	mail/dovecot
RUN_DEPENDS=	mail/dovecot

LIB_DEPENDS=	databases/xapian-core>=1.4.0 \
		textproc/icu4c>=63.0

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

CONFIGURE_ARGS=	--with-dovecot=${LOCALBASE}/lib/dovecot
LIBTOOL_FLAGS=	--tag=disable-static

NO_TEST=	Yes

post-install:
	find ${PREFIX}/lib/dovecot -name '*.la' -delete

.include <bsd.port.mk>
