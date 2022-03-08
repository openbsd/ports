COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.2.5
REVISION=	0
SHARED_LIBS=	lzma                 2.1      # 7.5
CATEGORIES=	archivers
DPB_PROPERTIES=	parallel

HOMEPAGE=	https://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lzmautils/}

# uses pledge()
WANTLIB=	c pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls \
		--enable-external-sha256
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
# sysconf uses ncpuonline, the default sysctl uses ncpu
CONFIGURE_ENV=	tuklib_cv_cpucores_method=sysconf

.include <bsd.port.mk>
