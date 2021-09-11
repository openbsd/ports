# $OpenBSD: Makefile,v 1.89 2021/09/11 22:48:21 namn Exp $

COMMENT =	retrieve files from the web via HTTP, HTTPS and FTP

DISTNAME =	wget-1.21.2
CATEGORIES =	net

HOMEPAGE =	https://www.gnu.org/software/wget/
MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto iconv idn2 intl pcre2-8 psl ssl unistring z

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		converters/libunistring \
			devel/gettext,-runtime \
			devel/libidn2 \
			devel/pcre2 \
			net/libpsl

MASTER_SITES =		${MASTER_SITE_GNU:=wget/}

# some regression tests require python3
MODULES +=		lang/python
MODPY_RUNDEP =		No

TEST_DEPENDS =		www/p5-HTTP-Daemon ${MODPY_RUN_DEPENDS}
# Test-proxied-https-auth.px
TEST_DEPENDS +=		www/p5-HTTP-Message security/p5-IO-Socket-SSL

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/wget"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-ssl=openssl
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/build-aux

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/wget.texi ${WRKSRC}/doc/sample.wgetrc

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif


.include <bsd.port.mk>
