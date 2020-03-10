# $OpenBSD: Makefile,v 1.23 2020/03/10 21:25:07 sthen Exp $

MULTI_PACKAGES=	-main -urlcheck
COMMENT-main=	libclamav-based virus scanner for c-icap
COMMENT-urlcheck= basic URL filtering service for c-icap

V=		0.5.4
REVISION=	0
DISTNAME=	c_icap_modules-$V
PKGNAME-main=	c-icap-clamav-$V
PKGNAME-urlcheck= c-icap-urlcheck-$V

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE}

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

.for i in ${MULTI_PACKAGES}
RUN_DEPENDS$i = www/c-icap/c-icap>=0.4.1
.endfor

cWANTLIB=	bz2 pthread z

LIB_DEPENDS-main=	security/clamav

WANTLIB-main += ${cWANTLIB}
WANTLIB-main += clamav crypto iconv json-c ltdl lzma m mspack
WANTLIB-main += pcre2-8 ssl xml2

LIB_DEPENDS-urlcheck=	archivers/bzip2 \
			databases/db/v4 \
			devel/pcre \
			www/c-icap/c-icap
WANTLIB-urlcheck +=	brotlicommon brotlidec brotlienc c db
WANTLIB-urlcheck +=	icapapi pcre ${cWANTLIB}

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/c-icap/

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
	rm ${PREFIX}/share/examples/c-icap/*.conf.default

.include <bsd.port.mk>
