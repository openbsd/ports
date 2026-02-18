COMMENT=		forensic toolkit based on TCT

DISTNAME=		sleuthkit-4.14.0

CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk 4.0

HOMEPAGE =		https://www.sleuthkit.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# CPLv1 & IBM & GPLv2 & Apache2 & BSD & MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	bfio c m pthread ${COMPILER_LIBCXX} sqlite3 vhdi vmdk z
WANTLIB +=	afflib aio_compat crypto curl expat nghttp2 nghttp3
WANTLIB +=	ngtcp2 ngtcp2_crypto_libressl readline ssl ewf vslvm

SITES =	https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/

COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
USE_GMAKE =		Yes

LIB_DEPENDS =		databases/sqlite3 \
			devel/libbfio \
			sysutils/afflib3 \
			sysutils/libvhdi \
			sysutils/libvmdk \
			sysutils/libvslvm \
			security/libewf
RUN_DEPENDS =		converters/p5-DateManip

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--enable-offline \
			--disable-java

CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no \
			ac_cv_header_postgresql_libpq_fe_h=no

NO_TEST =		Yes

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

post-install:
	mv ${PREFIX}/bin/pstat ${PREFIX}/bin/pstat.sleuthkit

.include <bsd.port.mk>
