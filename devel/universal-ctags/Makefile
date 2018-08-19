# $OpenBSD: Makefile,v 1.5 2018/08/19 06:04:23 rsadowski Exp $

COMMENT =	multilanguage reimplementation of the Unix ctags utility

GH_ACCOUNT =	universal-ctags
GH_PROJECT =	ctags
GH_COMMIT =	2258b24b27962615bc609c6139870be8769f578b
# commit date YYYYMMDD
DISTNAME =	universal-ctags-0.20180817

CATEGORIES =	devel

HOMEPAGE =	https://ctags.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c xml2 yaml

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE = 	gnu

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

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			textproc/py-docutils

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

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq
	ln -sf ${LOCALBASE}/bin/gsort ${WRKDIR}/bin/sort

.include <bsd.port.mk>
