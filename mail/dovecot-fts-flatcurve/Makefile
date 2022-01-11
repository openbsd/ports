# $OpenBSD: Makefile,v 1.8 2022/01/11 15:29:19 sthen Exp $

COMMENT=		full text search plugin for Dovecot using Xapian

GH_ACCOUNT=		slusarz
GH_PROJECT=		dovecot-fts-flatcurve
GH_COMMIT=		ea1f9cd57d65268cd4d3df7d911dcc708ab2c0f0
DISTNAME=		dovecot-fts-flatcurve-0.1.1pre20220109

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
