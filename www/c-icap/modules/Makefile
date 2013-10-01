# $OpenBSD: Makefile,v 1.2 2013/10/01 15:53:36 sthen Exp $

MULTI_PACKAGES=	-main -urlcheck
COMMENT-main=	libclamav-based virus scanner for c-icap
COMMENT-urlcheck= basic URL filtering service for c-icap

V=		0.2.5
DISTNAME=	c_icap_modules-$V
PKGNAME-main=	c-icap-clamav-$V
PKGNAME-urlcheck= c-icap-urlcheck-$V

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE}

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES}
RUN_DEPENDS$i = www/c-icap/c-icap
.endfor

MODULES=	converters/libiconv

WANTLIB=	pthread z

LIB_DEPENDS-main=	security/clamav
WANTLIB-main=		bz2 clamav ltdl m pthread z ${WANTLIB}

LIB_DEPENDS-urlcheck=	databases/db/v4 \
			www/c-icap/c-icap
WANTLIB-urlcheck=	c db icapapi pthread z

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/c-icap/

post-install:
	rm ${PREFIX}/lib/c_icap/*.la

.include <bsd.port.mk>
