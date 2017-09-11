# $OpenBSD: Makefile,v 1.2 2017/09/11 06:31:44 jca Exp $

COMMENT =	multilanguage reimplementation of the Unix ctags utility

GH_ACCOUNT =	universal-ctags
GH_PROJECT =	ctags
GH_COMMIT =	6742b034f43af57da7ba478528f2c628389ba16e
# commit date YYYYMMDD
DISTNAME =	universal-ctags-0.20170318

CATEGORIES =	devel

HOMEPAGE =	https://ctags.io/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

WANTLIB += c

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

CONFIGURE_ARGS =	--program-prefix=u

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
TEST_DEPENDS =		textproc/gdiff \
			sysutils/coreutils

FLAVORS=		iconv
FLAVOR?=

.if ${FLAVOR:Miconv}
CONFIGURE_ARGS+=	--enable-iconv
LIB_DEPENDS+=		converters/libiconv
WANTLIB+=		iconv
.endif

# Application software must not redefine macros in the
# implementation namespace.  For example, redefining __unused__
# blows up in our <ctype.h>.
post-extract:
	find ${WRKSRC} -type f -name '*.[ch]' -exec sed -i \
	's/__unused__/uct_unused/g; s/__printf__/uct_printf/g' {} +

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

pre-test:
	ln -sf ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -sf ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq
	ln -sf ${LOCALBASE}/bin/gsort ${WRKDIR}/bin/sort

.include <bsd.port.mk>
