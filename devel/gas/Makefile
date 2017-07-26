# $OpenBSD: Makefile,v 1.1.1.1 2017/07/26 21:45:23 pascal Exp $

COMMENT =		GNU assembler

V =			2.28
DISTNAME =		binutils-$V
PKGNAME =		gas-$V

CATEGORIES =		devel

HOMEPAGE =		https://sourceware.org/binutils/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

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
