COMMENT =		GNU assembler

# keep version synchronized with devel/binutils
V =			2.45.1
DISTNAME =		binutils-$V
PKGNAME =		gas-$V

CATEGORIES =		devel

HOMEPAGE =		https://sourceware.org/binutils/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c z zstd

SITES =			${SITE_GNU:=binutils/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-ld \
			--disable-gold \
			--disable-nls \
			--program-prefix=g \
			--with-system-zlib \
			--disable-install-libbfd \
			--disable-shared \
			--disable-host-shared

USE_GMAKE =		yes

LIBTOOL_FLAGS =		--tag=disable-shared
LIB_DEPENDS =		archivers/zstd

post-extract:
	@rm -rf ${WRKSRC}/{binutils,gprof}

post-install:
	cd ${PREFIX}/info && mv as.info gas.info
	cd ${PREFIX}/info && rm bfd.info ctf-spec.info sframe-spec.info

.include <bsd.port.mk>
