# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:09 sthen Exp $

COMMENT =		GNU assembler

V =			2.31.1
DISTNAME =		binutils-$V
PKGNAME =		gas-$V

CATEGORIES =		devel

HOMEPAGE =		https://sourceware.org/binutils/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c z

MASTER_SITES =		${MASTER_SITE_GNU:=binutils/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-ld \
			--disable-gold \
			--disable-nls \
			--program-prefix=g \
			--with-system-zlib \
			--disable-install-libbfd \
			--disable-shared \
			--disable-host-shared

LIBTOOL_FLAGS =		--tag=disable-shared

post-extract:
	@rm -rf ${WRKSRC}/{binutils,gprof}

post-install:
	cd ${PREFIX}/info && mv as.info gas.info

.include <bsd.port.mk>
