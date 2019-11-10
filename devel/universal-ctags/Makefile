# $OpenBSD: Makefile,v 1.10 2019/11/10 15:40:24 cwen Exp $

COMMENT =	multilanguage reimplementation of the Unix ctags utility

GH_ACCOUNT =	universal-ctags
GH_PROJECT =	ctags
GH_COMMIT =	efce8b1f56edcdbff094299356f4e26d8dfe9cfd
# commit date YYYYMMDD
DISTNAME =	universal-ctags-0.20191025
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://ctags.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c xml2 yaml-0

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE = 	autoreconf

# emulate git rev-parse --short HEAD
REV =			"${GH_COMMIT:C/^(.{7}).*/\1/}"
MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			V=1 \
			REV="${REV}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

CONFIGURE_ARGS =	--program-prefix=u --disable-json

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
AUTORECONF =		./autogen.sh

BUILD_DEPENDS =		textproc/py-docutils

LIB_DEPENDS +=		textproc/libxml \
			devel/libyaml

TEST_DEPENDS =		textproc/gdiff \
			sysutils/coreutils

FLAVORS=		iconv aspell
FLAVOR?=

.if ${FLAVOR:Miconv}
CONFIGURE_ARGS+=	--enable-iconv
LIB_DEPENDS+=		converters/libiconv
WANTLIB+=		iconv
.else
CONFIGURE_ARGS+=	--disable-iconv
.endif

.if ${FLAVOR:Maspell}
CONFIGURE_ARGS+=	--enable-aspell
LIB_DEPENDS+=		textproc/aspell/core
# textproc/aspell does not install a aspell.pc file
CONFIGURE_ENV +=	ASPELL_LIBS="-L${LOCALBASE}/lib -laspell" \
			ASPELL_CFLAGS="-I${LOCALBASE}/include"
WANTLIB+=		aspell
.else
CONFIGURE_ARGS+=	--disable-aspell
.endif

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq
	ln -sf ${LOCALBASE}/bin/gsort ${WRKDIR}/bin/sort

.include <bsd.port.mk>
