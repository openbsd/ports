# $OpenBSD: Makefile,v 1.9 2015/09/09 13:19:37 sthen Exp $

MULTI_PACKAGES=	-main -urlcheck
COMMENT-main=	libclamav-based virus scanner for c-icap
COMMENT-urlcheck= basic URL filtering service for c-icap

V=		0.4.1
DISTNAME=	c_icap_modules-$V
PKGNAME-main=	c-icap-clamav-$V
PKGNAME-urlcheck= c-icap-urlcheck-$V

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE}

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES}
RUN_DEPENDS$i = www/c-icap/c-icap>=0.4.1
.endfor

MODULES=	converters/libiconv

cWANTLIB=	bz2 pthread z

LIB_DEPENDS-main=	security/clamav
WANTLIB-main=		${cWANTLIB} ${WANTLIB}
WANTLIB-main+=		clamav crypto ltdl lzma m pthread ssl stdc++ xml2 z

LIB_DEPENDS-urlcheck=	archivers/bzip2 \
			databases/db/v4 \
			devel/pcre \
			www/c-icap/c-icap
WANTLIB-urlcheck=	c db icapapi pcre ${cWANTLIB}

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/c-icap/

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
	rm ${PREFIX}/share/examples/c-icap/*.conf.default

.include <bsd.port.mk>
