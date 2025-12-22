COMMENT =	GNU binary utilities

# keep version synchronized with devel/gas
V =		2.45.1
DISTNAME =	binutils-${V}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/binutils/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c z zstd

LIB_DEPENDS +=	archivers/zstd
RUN_DEPENDS +=	devel/gas>=${V}

SITES =		${SITE_GNU:=binutils/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--disable-gas \
			--disable-gprof \
			--disable-ld \
			--disable-libctf \
			--disable-nls \
			--disable-install-libbfd \
			--program-prefix=g \
			--without-msgpack \
			--with-system-zlib

USE_GMAKE =	Yes

post-install:
	@rm ${PREFIX}/info/bfd.info
	@rm -rf ${PREFIX}/*-unknown-openbsd${OSREV}

.include <bsd.port.mk>
