# $OpenBSD: Makefile,v 1.7 2019/05/20 04:47:01 naddy Exp $

COMMENT =	multilanguage reimplementation of the Unix ctags utility

GH_ACCOUNT =	universal-ctags
GH_PROJECT =	ctags
GH_COMMIT =	d0807887cc12014501a6692412763c5ea03ae60d
# commit date YYYYMMDD
DISTNAME =	universal-ctags-0.20180928

CATEGORIES =	devel

HOMEPAGE =	https://ctags.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c xml2 yaml

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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

FLAVORS=		iconv
FLAVOR?=

.if ${FLAVOR:Miconv}
CONFIGURE_ARGS+=	--enable-iconv
LIB_DEPENDS+=		converters/libiconv
WANTLIB+=		iconv
.else
CONFIGURE_ARGS+=	--disable-iconv
.endif

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq
	ln -sf ${LOCALBASE}/bin/gsort ${WRKDIR}/bin/sort

.include <bsd.port.mk>
