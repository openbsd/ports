# $OpenBSD: Makefile,v 1.38 2020/03/26 20:44:51 naddy Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.2.5
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
