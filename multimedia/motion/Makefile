# $OpenBSD: Makefile,v 1.13 2016/09/23 09:16:56 sthen Exp $

COMMENT=	motion detection software for video

GH_ACCOUNT=	Mr-Dave
GH_PROJECT=	motion
GH_COMMIT=	9b4c16cae0ea77950cc156a9c82947ac51825f68
V=		3.4.1
REVISION=	3
DISTNAME=	motion-$V

CATEGORIES=	multimedia

# there are several different forks at the moment which will hopefully
# be re-merged at some point; we are tracking the version from
# https://github.com/Mr-Dave/motion
HOMEPAGE=	http://www.lavrsen.dk/foswiki/bin/view/Motion/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL (according to source files, v2 only. website says v2+).
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL avcodec avformat avutil c jpeg m pthread sqlite3 swscale

FLAVOR?=
FLAVORS=		bktr mysql pgsql

LIB_DEPENDS=		databases/sqlite3 \
			graphics/jpeg \
			graphics/ffmpeg

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/motion \
			examplesdir=${PREFIX}/share/examples/motion

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_ARGS=		--without-optimizecpu \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.if ${FLAVOR:L:Mbktr}
CONFIGURE_ARGS+=	--without-v4l
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB+=		lib/mysql/mysqlclient z
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=		databases/postgresql
WANTLIB+=		pq
CONFIGURE_ARGS+=	--with-pgsql-lib=${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

NO_TEST=		Yes

post-extract:
	printf '#!/bin/sh\necho -n "$V-Git-${GH_COMMIT:C/[0-9a-f]{33}$//}"\n' > ${WRKSRC}/version.sh

post-patch:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -fiv

pre-configure:
	perl -pi -e s,/usr/local/etc,${SYSCONFDIR},g \
		${WRKSRC}/motion-dist.conf.in

.include <bsd.port.arch.mk>

.if ${ARCH:Mamd64}
CFLAGS+=	-mfpmath=sse -msse3
.endif

.include <bsd.port.mk>
