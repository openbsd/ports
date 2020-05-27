# $OpenBSD: Makefile,v 1.4 2020/05/27 11:27:49 sthen Exp $

COMMENT=		full text search plugin for Dovecot using Xapian

GH_ACCOUNT=		grosjo
GH_PROJECT=		fts-xapian
GH_TAGNAME=		1.3.1
PKGNAME=		dovecot-${DISTNAME}

CATEGORIES=		mail

MAINTAINER=		Tom Wong-Cornall <tom@wongcornall.com>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} icudata icui18n icuio icuuc m sqlite3
WANTLIB += uuid xapian z

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		mail/dovecot
RUN_DEPENDS=		mail/dovecot

LIB_DEPENDS=		databases/xapian-core>=1.4.0 \
			sysutils/e2fsprogs           \
			textproc/icu4c>=63.0

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--with-dovecot=${LOCALBASE}/lib/dovecot
LIBTOOL_FLAGS=		--tag=disable-static

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

NO_TEST=		Yes

post-install:
	find ${PREFIX}/lib/dovecot -name '*.la' -delete

.include <bsd.port.mk>
