COMMENT=	full text search plugin for Dovecot using Xapian

GH_ACCOUNT=	slusarz
GH_PROJECT=	dovecot-fts-flatcurve
GH_TAGNAME=	v1.0.4

CATEGORIES=	mail

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} m xapian z

COMPILER=	base-clang ports-gcc

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

BUILD_DEPENDS=	mail/dovecot
RUN_DEPENDS=	mail/dovecot
LIB_DEPENDS=	databases/xapian-core

SEPARATE_BUILD=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--with-dovecot=${LOCALBASE}/lib/dovecot
CONFIGURE_ENV=	CPPFLAGS=-I${LOCALBASE}/include
LIBTOOL_FLAGS=	--tag=disable-static

AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

post-install:
	find ${PREFIX}/lib/dovecot -name '*.la' -delete

.include <bsd.port.mk>
