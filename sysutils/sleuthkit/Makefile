# $OpenBSD: Makefile,v 1.28 2020/03/17 20:41:45 rpointel Exp $

COMMENT=		forensic toolkit based on TCT

DISTNAME=		sleuthkit-4.8.0
CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk 2.0 # 20.0

HOMEPAGE=		http://www.sleuthkit.org/

MAINTAINER=		Remi Pointel <rpointel@openbsd.org>

# CPLv1 & IBM & GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/

WANTLIB +=		bfio c m pthread ${COMPILER_LIBCXX} sqlite3 vhdi vmdk z

COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--disable-java \
			--without-afflib \
			--without-libewf

CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no \
			ac_cv_header_postgresql_libpq_fe_h=no
RUN_DEPENDS =		converters/p5-DateManip
LIB_DEPENDS =		databases/sqlite3 \
   			devel/libbfio \
   			sysutils/libvhdi \
   			sysutils/libvmdk

NO_TEST =		Yes

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

post-install:
	mv ${PREFIX}/bin/pstat ${PREFIX}/bin/pstat.sleuthkit

.include <bsd.port.mk>
