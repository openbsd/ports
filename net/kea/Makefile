COMMENT-main=	high-performance and extensible DHCP server engine from ISC
COMMENT-mysql=	MySQL/MariaDB support for Kea
COMMENT-pgsql=	PostgreSQL support for Kea

VERSION=	3.2.0
PORTROACH=	limitw:1,even

DISTNAME=	kea-${VERSION}
PKGNAME-main=	kea-${VERSION:S/-P/pl/}
EXTRACT_SUFX=	.tar.xz

LV=		12.0
SHARED_LIBS +=	kea-asiodns ${LV}
SHARED_LIBS +=	kea-asiolink ${LV}
SHARED_LIBS +=	kea-cc ${LV}
SHARED_LIBS +=	kea-cfgrpt ${LV}
SHARED_LIBS +=	kea-config ${LV}
SHARED_LIBS +=	kea-cryptolink ${LV}
SHARED_LIBS +=	kea-d2srv ${LV}
SHARED_LIBS +=	kea-database ${LV}
SHARED_LIBS +=	kea-dhcp ${LV}
SHARED_LIBS +=	kea-dhcp_ddns ${LV}
SHARED_LIBS +=	kea-dhcpsrv ${LV}
SHARED_LIBS +=	kea-dns ${LV}
SHARED_LIBS +=	kea-eval ${LV}
SHARED_LIBS +=	kea-exceptions ${LV}
SHARED_LIBS +=	kea-hooks ${LV}
SHARED_LIBS +=	kea-http ${LV}
SHARED_LIBS +=	kea-log ${LV}
SHARED_LIBS +=	kea-log-interprocess ${LV}
SHARED_LIBS +=	kea-mysql ${LV}
SHARED_LIBS +=	kea-pgsql ${LV}
SHARED_LIBS +=	kea-process ${LV}
SHARED_LIBS +=	kea-stats ${LV}
SHARED_LIBS +=	kea-tcp ${LV}
SHARED_LIBS +=	kea-util ${LV}
SHARED_LIBS +=	kea-util-io ${LV}

CATEGORIES=	net

HOMEPAGE=	https://kea.isc.org/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto log4cplus m pthread ssl ${COMPILER_LIBCXX}

SITES=		${SITE_ISC:=kea/${VERSION}/}

MODULES=	devel/meson \
		lang/python
LIB_DEPENDS=	devel/log4cplus
BUILD_DEPENDS=	devel/bison \
		devel/boost \
		textproc/py-sphinx

FLAVOR?=
PSEUDO_FLAVORS=	no_mysql no_pgsql

MULTI_PACKAGES=	-main -mysql -pgsql
DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS-mysql=  net/kea,-main \
		databases/mariadb
WANTLIB-mysql += ${COMPILER_LIBCXX} crypto kea-asiolink kea-cc kea-database
WANTLIB-mysql += kea-dhcp kea-dhcpsrv kea-exceptions kea-log kea-process
WANTLIB-mysql += kea-util m mariadb

LIB_DEPENDS-pgsql= net/kea,-main \
		databases/postgresql
WANTLIB-pgsql += ${COMPILER_LIBCXX} crypto kea-asiolink kea-cc kea-database
WANTLIB-pgsql += kea-dhcp kea-dhcpsrv kea-exceptions kea-log kea-process
WANTLIB-pgsql += kea-util m pq

CONFIGURE_ARGS=	-Dkrb5=disabled \
		-Dnetconf=disabled

COMPILER=	base-clang ports-gcc
# inherited from the devel/log4cplus dependency
#CXXFLAGS_base-clang=	-std=c++14

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-mysql}
CONFIGURE_ARGS+= -Dmysql=enabled
.else
RMFILES+=	share/doc/kea/examples/kea[46]/*mysql* \
		share/kea/scripts/mysql
CONFIGURE_ARGS += -Dmysql=disabled
.endif

.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+= -Dpostgresql=enabled
.else
RMFILES+=	share/doc/kea/examples/kea[46]/*pgsql* \
		share/kea/scripts/pgsql
CONFIGURE_ARGS+= -Dpostgresql=disabled
.endif

post-build:
	cd ${WRKSRC}/doc/sphinx; ${SETENV} ${MAKE_ENV} \
		sphinx-build -M man . ./_build -v -j ${MAKE_JOBS} -E -a -W

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/sphinx/_build/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/sphinx/_build/man/*.8 ${PREFIX}/man/man8
.for i in ${RMFILES}
	rm -r ${PREFIX}/$i
.endfor
	mv ${WRKINST}/etc/kea ${PREFIX}/share/examples/

.include <bsd.port.mk>
