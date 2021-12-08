# $OpenBSD: Makefile,v 1.3 2021/12/08 14:12:42 sthen Exp $

COMMENT=		full text search plugin for Dovecot using Xapian

GH_ACCOUNT=		slusarz
GH_PROJECT=		dovecot-fts-flatcurve
GH_COMMIT=		56b193185cbec032fae00c592e64f99f8497dd62
DISTNAME=		dovecot-fts-flatcurve-0.1.0pl20211103

# dotlock-related problems in newer code
# https://github.com/slusarz/dovecot-fts-flatcurve/issues/16
#GH_COMMIT=		a69652485c3c4371ae78086acaec0a5a39f02efe
#DISTNAME=		dovecot-fts-flatcurve-0.1.0pl20211202

CATEGORIES=		mail

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m xapian z

COMPILER=		base-clang ports-gcc

MAINTAINER=		Stuart Henderson <stu.ports@spacehopper.org>

BUILD_DEPENDS=		mail/dovecot
RUN_DEPENDS=		mail/dovecot
DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		databases/xapian-core

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--with-dovecot=${LOCALBASE}/lib/dovecot
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include
LIBTOOL_FLAGS=		--tag=disable-static

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

post-install:
	find ${PREFIX}/lib/dovecot -name '*.la' -delete

.include <bsd.port.mk>
