COMMENT =	GNU binary utilities

# keep version synchronized with devel/gas
DISTNAME =	binutils-2.45
REVISION =	0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/binutils/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c z zstd

LIB_DEPENDS +=	archivers/zstd
RUN_DEPENDS +=	devel/gas>=2.45p1

SITES =		${SITE_GNU:=binutils/}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--disable-gprof \
			--disable-ld \
			--disable-libctf \
			--disable-nls \
			--disable-install-libbfd \
			--program-prefix=g \
			--without-msgpack \
			--with-system-zlib

USE_GMAKE =	Yes

post-install:
	@rm ${PREFIX}/bin/gas
	@rm ${PREFIX}/info/as.info
	@rm ${PREFIX}/info/bfd.info
	@rm ${PREFIX}/man/man1/gas.1
	@rm -rf ${PREFIX}/*-unknown-openbsd${OSREV}

.include <bsd.port.mk>
