# $OpenBSD: Makefile,v 1.58 2015/01/30 14:12:26 sthen Exp $

COMMENT=	stack-based interpreter for terminal applications

DISTNAME=	slang-2.2.4
REVISION=	0
PKGNAME=	lib${DISTNAME}
SHARED_LIBS=	slang 16.0

CATEGORIES=	devel
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v2.2/ \
		ftp://ftp.fu-berlin.de/pub/unix/misc/slang/v2.2/

HOMEPAGE=	http://www.s-lang.org/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m onig pcre png termcap z

LIB_DEPENDS=		devel/pcre \
			graphics/png \
			textproc/oniguruma
MODULES=		converters/libiconv

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_DIR=		${WRKSRC}/autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf

CONFIGURE_ARGS=		--with-pnginc=${LOCALBASE}/include \
			--with-pnglib=${LOCALBASE}/lib
TEST_TARGET=		runtests
TEST_FLAGS=		TCAPLIB="-ltermlib"

MAKE_ENV=		LIBslang_MAJOR=${LIBslang_VERSION:R} \
			LIBslang_MINOR=${LIBslang_VERSION:E}

pre-configure:
	cd ${AUTOCONF_DIR}; cp configure ..

.include <bsd.port.mk>

.if !${PROPERTIES:Mno_shared}
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif
