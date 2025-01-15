COMMENT=	mirroring/synchronization over low bandwidth links

DISTNAME=	rsync-3.4.0
REVISION=	1

CATEGORIES=	net
HOMEPAGE=	https://rsync.samba.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

FLAVORS=	minimal
FLAVOR?=

# GPLv3
PERMIT_PACKAGE= Yes

WANTLIB=	c crypto

SITES=		https://rsync.samba.org/ftp/rsync/src/ \
		https://ftp.funet.fi/pub/mirrors/samba.org/pub/rsync/src/

BUILD_DEPENDS=	sysutils/xxhash

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-md2man \
		--disable-lz4 \
		--disable-zstd \
		--with-included-popt \
		--with-included-zlib \
		--with-rrsync \
		--with-rsyncd-conf="${SYSCONFDIR}/rsyncd.conf" \
		--with-rsh=/usr/bin/ssh \
		--with-nobody-user=_rsync \
		--with-nobody-group=_rsync
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DXXH_INLINE_ALL=1" \
		ac_cv_search_XXH64_createState=""

DEBUG_PACKAGES= ${BUILD_PACKAGES}

.if ${MACHINE_ARCH} == amd64
CONFIGURE_ARGS += --enable-md5-asm
.endif

.if !${FLAVOR:Mminimal}
CONFIGURE_ARGS += --enable-lz4 \
		  --enable-zstd
CONFIGURE_ENV += LDFLAGS='-L${LOCALBASE}/lib'
LIB_DEPENDS +=	archivers/lz4 \
		archivers/zstd \
		converters/libiconv
WANTLIB +=	iconv lz4 zstd
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/support/rrsync

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rsync
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${PREFIX}/share/doc/rsync
	@set +e; if [ -e ${LOCALBASE}/bin/commonmark ]; then \
	echo make -C ${WRKSRC} rrsync.1; if make -C ${WRKSRC} rrsync.1; then \
		diff -u ${WRKSRC}/rrsync.1 ${FILESDIR}/ || echo \
		"===> files/rrsync.1 needs updating"; fi; else \
	    echo "===> py3-commonmark not installed, could not check freshness of files/rrsync.1"; fi
	# rrsync.1 not included in distfile; use pre-generated file from ports
	${INSTALL_DATA} ${FILESDIR}/rrsync.1 ${PREFIX}/man/man1/rrsync.1

.include <bsd.port.mk>
