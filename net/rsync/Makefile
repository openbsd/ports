# $OpenBSD: Makefile,v 1.86 2020/08/03 21:35:36 kn Exp $

COMMENT =	mirroring/synchronization over low bandwidth links

DISTNAME =	rsync-3.2.2
CATEGORIES =	net
HOMEPAGE =	https://rsync.samba.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	iconv
FLAVOR ?=

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto lz4 xxhash zstd

MASTER_SITES =	https://rsync.samba.org/ftp/rsync/src/ \
		http://ftp.funet.fi/pub/mirrors/samba.org/pub/rsync/src/

SEPARATE_BUILD =Yes
CONFIGURE_STYLE =gnu
CONFIGURE_ARGS =--with-included-popt \
		--with-included-zlib \
		--with-rsyncd-conf="${SYSCONFDIR}/rsyncd.conf" \
		--with-rsh=/usr/bin/ssh \
		--with-nobody-group=_rsync
CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'

.if ${FLAVOR:Miconv}
LIB_DEPENDS +=	converters/libiconv
WANTLIB +=	iconv
.endif

DOCDIR =	${PREFIX}/share/doc/rsync
DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	archivers/lz4 \
		archivers/zstd \
		sysutils/xxhash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/rsyncd.conf.5 \
		${WRKSRC}/support/rrsync

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/support/rrsync ${PREFIX}/bin

.include <bsd.port.mk>
