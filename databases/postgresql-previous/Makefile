COMMENT=	PostgreSQL RDBMS (previous version, for pg_upgrade)

VERSION=	15.4
DISTNAME=	postgresql-${VERSION}
PKGNAME=	postgresql-previous-${VERSION}
REVISION=	0

CATEGORIES=	databases
SHARED_LIBS=	ecpg		7.10 \
		ecpg_compat	4.10 \
		pgtypes		4.9 \
		pq		6.14

HOMEPAGE=	https://www.postgresql.org/

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curses execinfo m perl readline ssl xml2 z

SITES=		https://ftp.postgresql.org/pub/source/v${VERSION}/ \
		ftp://ftp.postgresql.org/pub/source/v${VERSION}/

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes

DEBUG_PACKAGES= ${BUILD_PACKAGES}

CONFIGURE_STYLE=gnu

POSTGRESQL_DIR=	postgresql-${VERSION:C/.[0-9]+$//}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--with-openssl=/usr \
		--with-perl \
		--without-python \
		--with-pam=no \
		--with-uuid=bsd \
		--enable-integer-datetimes \
		--bindir="${PREFIX}/bin/${POSTGRESQL_DIR}" \
		--libdir="${PREFIX}/lib/${POSTGRESQL_DIR}" \
		--includedir="${PREFIX}/include/${POSTGRESQL_DIR}" \
		--datadir="${PREFIX}/share/${POSTGRESQL_DIR}" \
		--with-includes="${INCLUDES}" \
		--with-libraries="${LOCALBASE}/lib/" \
		--with-system-tzdata="/usr/share/zoneinfo" \
		--with-openssl \
		--with-libxml \
		--disable-thread-safety

# There is no spinlock support for hppa and alpha yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "riscv64"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

ALL_TARGET=	all
INSTALL_TARGET=	install

LIB_DEPENDS = textproc/libxml

MAKE_ENV=	LIBpq_MAJOR=${LIBpq_VERSION:R} \
		LIBpq_MINOR=${LIBpq_VERSION:E} \
		LIBecpg_MAJOR=${LIBecpg_VERSION:R} \
		LIBecpg_MINOR=${LIBecpg_VERSION:E} \
		LIBecpg_compat_MAJOR=${LIBecpg_compat_VERSION:R} \
		LIBecpg_compat_MINOR=${LIBecpg_compat_VERSION:E} \
		LIBpgtypes_MAJOR=${LIBpgtypes_VERSION:R} \
		LIBpgtypes_MINOR=${LIBpgtypes_VERSION:E}

# Work around Makefile issue where it attempts to rebuild
# the documentation even if it is not necessary.
pre-build:
	touch ${WRKSRC}/doc/src/sgml/*-stamp

post-build:
	cd ${WRKSRC}/contrib && gmake

SUBST_VARS +=	POSTGRESQL_DIR

INSTALL_REPLACE = 's/^install_bin = .*$$/ifdef BSD_INSTALL_SCRIPT\ninstall_bin
INSTALL_REPLACE += = \$$\(subst -m 755,,\$${BSD_INSTALL_SCRIPT}\)
INSTALL_REPLACE += \nelse\ninstall_bin = \/usr\/bin\/install -c -o ${BINOWN}
INSTALL_REPLACE += -g ${BINGRP}\nendif/'
post-install:
	cd ${WRKSRC}/contrib && gmake install
	perl -i -pe ${INSTALL_REPLACE} \
		${PREFIX}/lib/${POSTGRESQL_DIR}/pgxs/src/Makefile.global
	# avoid conflict between extension example files and
	# databases/postgresql,-docs
	rm -R ${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>
