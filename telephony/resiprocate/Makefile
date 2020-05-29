# $OpenBSD: Makefile,v 1.1.1.1 2020/05/29 21:41:23 feinerer Exp $

COMMENT-main =		reSIProcate SIP stack
COMMENT-repro =		reSIProcate SIP proxy/registrar server
COMMENT-return =	reSIProcate STUN/TURN client and server

V =			1.12.0
DISTNAME =		resiprocate-${V}
PKGNAME-main =		resiprocate-${V}
PKGNAME-repro =		resiprocate-repro-${V}
PKGNAME-return =	resiprocate-return-${V}

SHARED_LIBS +=	dum		0.0
SHARED_LIBS +=	reTurnClient	0.0
SHARED_LIBS +=	reTurnCommon	0.0
SHARED_LIBS +=	repro		0.0
SHARED_LIBS +=	resip		0.0
SHARED_LIBS +=	rutil		0.0

CATEGORIES =		telephony

HOMEPAGE =		https://www.resiprocate.org

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# Vovida (BSD like)
# https://github.com/resiprocate/resiprocate/blob/master/COPYING
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} cares crypto ffi gmp gnutls hogweed
WANTLIB-main += iconv idn2 intl m nettle p11-kit radcli ssl tasn1 unistring

WANTLIB-repro += ${WANTLIB-main} c db_cxx dum mariadb pq resip rutil z

WANTLIB-return += ${WANTLIB-main} boost_system c rutil

MASTER_SITES =		https://www.resiprocate.org/files/pub/reSIProcate/releases/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			resiprocate-contrib-${V}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gperf
LIB_DEPENDS-main =	net/libcares \
			net/radcli
LIB_DEPENDS-repro =	${BUILD_PKGPATH},-main=${V} \
			databases/db/v4 \
			databases/mariadb \
			databases/postgresql
LIB_DEPENDS-return =	${BUILD_PKGPATH},-main=${V} \
			devel/boost

USE_GMAKE =		Yes

LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-static \
			--enable-dtls \
			--enable-ipv6 \
			--with-c-ares \
			--with-mysql \
			--with-popt \
			--with-postgresql \
			--with-radcli \
			--with-ssl
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/db4 \
			-I${LOCALBASE}/include/postgresql \
			-I${WRKSRC}/contrib/asio/include \
			-I${WRKSRC}/contrib/cajun/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/db4"

MULTI_PACKAGES =	-main -repro -return

PSEUDO_FLAVORS =	no_repro no_return
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-repro}
CONFIGURE_ARGS += --enable-repro-plugins \
		  --with-repro
.endif

.if ${BUILD_PACKAGES:M-return}
CONFIGURE_ARGS += --with-return
.endif

post-extract:
	mv ${WRKDIR}/contrib ${WRKSRC}

post-install:
.if ${BUILD_PACKAGES:M-repro}
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/resiprocate/repro
	${INSTALL_DATA} ${WRKSRC}/repro/{README*,create*_reprodb.sql} \
		${PREFIX}/share/doc/resiprocate/repro
	${SUBST_DATA} ${WRKSRC}/repro/repro.config \
		${PREFIX}/share/examples/resiprocate/repro/repro.config
	${INSTALL_DATA} ${WRKSRC}/repro/users.txt \
		${PREFIX}/share/examples/resiprocate/repro
	rm ${PREFIX}/lib/resiprocate/repro/plugins/*.la
.endif
.if ${BUILD_PACKAGES:M-return}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/resiprocate/reTurn
	${SUBST_DATA} ${WRKSRC}/reTurn/reTurnServer.config \
		${PREFIX}/share/examples/resiprocate/reTurn/reTurnServer.config
	${INSTALL_DATA} ${WRKSRC}/reTurn/users.txt \
		${PREFIX}/share/examples/resiprocate/reTurn
.endif

.include <bsd.port.mk>
