COMMENT-main =		reSIProcate SIP stack
COMMENT-repro =		reSIProcate SIP proxy/registrar server
COMMENT-return =	reSIProcate STUN/TURN client and server

V =			1.13.2
GH_ACCOUNT =		resiprocate
GH_PROJECT =		resiprocate
GH_TAGNAME =		resiprocate-${V}

PKGNAME-main =		resiprocate-${V}
PKGNAME-repro =		resiprocate-repro-${V}
PKGNAME-return =	resiprocate-return-${V}

SHARED_LIBS +=	dum		0.0
SHARED_LIBS +=	reTurnClient	0.0
SHARED_LIBS +=	reTurnCommon	0.0
SHARED_LIBS +=	reprolib	0.0
SHARED_LIBS +=	resip		0.0
SHARED_LIBS +=	rutil		0.0

CATEGORIES =		telephony

HOMEPAGE =		https://www.resiprocate.org

# Vovida (BSD like)
# https://github.com/resiprocate/resiprocate/blob/master/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} crypto m radcli ssl
WANTLIB-main =		${WANTLIB} c cares
WANTLIB-repro =		${WANTLIB} c db db_cxx dum mariadb pq resip rutil
WANTLIB-return =	${WANTLIB} c rutil

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gperf \
			devel/boost \
			devel/asio
LIB_DEPENDS-main =	net/libcares \
			net/radcli
LIB_DEPENDS-repro =	${BUILD_PKGPATH},-main=${V} \
			databases/db/v4 \
			databases/mariadb \
			databases/postgresql
LIB_DEPENDS-return =	${BUILD_PKGPATH},-main=${V}

MODULES =		devel/cmake
CONFIGURE_ARGS =	-DUSE_MAXMIND_GEOIP=FALSE \
			-DUSE_POSTGRESQL=TRUE \
			-DUSE_MYSQL=TRUE \
			-DRESIP_HAVE_RADCLI=TRUE \
			-DBUILD_QPID_PROTON=FALSE \
			-DBUILD_TFM=FALSE \
			-DBUILD_RECON=FALSE \
			-DBUILD_REFLOW=FALSE \
			-DBERKELEYDB_INCLUDE_DIR=${LOCALBASE}/include/db4 \
			-DENABLE_LOG_REPOSITORY_DETAILS=OFF \
			-DVERSIONED_SONAME=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib
CXXFLAGS =		-I${LOCALBASE}/include

MULTI_PACKAGES =	-main -repro -return
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/resiprocate/{repro,reTurn}
	${INSTALL_DATA} ${WRKSRC}/repro/{README*,create*_reprodb.sql} \
		${PREFIX}/share/doc/resiprocate/repro
	${SUBST_DATA} ${WRKSRC}/repro/repro.config \
		${PREFIX}/share/examples/resiprocate/repro/repro.config
	${INSTALL_DATA} ${WRKSRC}/repro/users.txt \
		${PREFIX}/share/examples/resiprocate/repro

	${SUBST_DATA} ${WRKSRC}/reTurn/reTurnServer.config \
		${PREFIX}/share/examples/resiprocate/reTurn/reTurnServer.config
	${INSTALL_DATA} ${WRKSRC}/reTurn/users.txt \
		${PREFIX}/share/examples/resiprocate/reTurn

.include <bsd.port.mk>
