COMMENT=	various filter modules for c-icap

V=		0.5.7

GH_ACCOUNT=	c-icap
GH_PROJECT=	c-icap-modules
GH_TAGNAME=	C_ICAP_MODULES_$V
PKGNAME=	c-icap-modules-$V

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE} \
		--with-clamav

FAKE_FLAGS=	CONFIGDIR=${PREFIX}/share/examples/c-icap

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += brotlicommon brotlidec brotlienc bz2 c clamav crypto
WANTLIB += db execinfo icapapi iconv json-c lzma m mspack pcre2-8
WANTLIB += ssl util xml2 z zstd

LIB_DEPENDS=	archivers/bzip2 \
		databases/db/v4 \
		security/clamav \
		www/c-icap/c-icap

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/c-icap/

post-install:
	rm ${PREFIX}/lib/c_icap/*.la
	cd ${PREFIX}/share/examples/c-icap; \
		for i in *.default; do mv $$i $${i%.default}; \
	done

.include <bsd.port.mk>
