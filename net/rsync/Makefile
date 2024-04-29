COMMENT =	mirroring/synchronization over low bandwidth links

DISTNAME =	rsync-3.3.0
CATEGORIES =	net
HOMEPAGE =	https://rsync.samba.org/

FLAVORS =	iconv
FLAVOR ?=

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto

SITES =		https://rsync.samba.org/ftp/rsync/src/ \
		https://ftp.funet.fi/pub/mirrors/samba.org/pub/rsync/src/

MODULES =	lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	textproc/py-commonmark${MODPY_FLAVOR} \
		sysutils/xxhash

SEPARATE_BUILD =Yes
CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--disable-lz4 \
		--disable-zstd \
		--with-included-popt \
		--with-included-zlib \
		--with-rrsync \
		--with-rsyncd-conf="${SYSCONFDIR}/rsyncd.conf" \
		--with-rsh=/usr/bin/ssh \
		--with-nobody-user=_rsync \
		--with-nobody-group=_rsync
CONFIGURE_ENV +=CPPFLAGS="-I${LOCALBASE}/include -DXXH_INLINE_ALL=1" \
		ac_cv_search_XXH64_createState=""

.include <bsd.port.arch.mk>

.if ${ARCH:Mamd64}
CONFIGURE_ARGS +=--enable-md5-asm
.endif

.if ${FLAVOR:Miconv}
CONFIGURE_ENV +=LDFLAGS='-L${LOCALBASE}/lib'
LIB_DEPENDS +=	converters/libiconv
WANTLIB +=	iconv
.endif

DOCDIR =	${PREFIX}/share/doc/rsync
DEBUG_PACKAGES =	${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/support/rrsync

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}

.include <bsd.port.mk>
