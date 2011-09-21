# $OpenBSD: Makefile,v 1.53 2011/09/21 22:01:56 sthen Exp $

COMMENT=	stack-based interpreter for terminal applications

DISTNAME=	slang-2.2.4
PKGNAME=	lib${DISTNAME}
SHARED_LIBS=	slang 16.0

CATEGORIES=	devel
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v2.2/ \
		ftp://ftp.fu-berlin.de/pub/unix/misc/slang/v2.2/

HOMEPAGE=	http://www.s-lang.org/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m onig pcre png termcap z

LIB_DEPENDS=		devel/pcre \
			graphics/png \
			textproc/oniguruma
MODULES=		converters/libiconv

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_DIR=		${WRKSRC}/autoconf
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf
USE_GROFF=		Yes

CONFIGURE_ARGS=		--with-pnginc=${LOCALBASE}/include/libpng \
			--with-pnglib=${LOCALBASE}/lib
REGRESS_TARGET=		runtests
REGRESS_FLAGS=		TCAPLIB="-ltermlib"

MAKE_ENV=		LIBslang_MAJOR=${LIBslang_VERSION:R} \
			LIBslang_MINOR=${LIBslang_VERSION:E}

pre-configure:
	cd ${AUTOCONF_DIR}; cp configure ..

.include <bsd.port.mk>

.if !(defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes")
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif
