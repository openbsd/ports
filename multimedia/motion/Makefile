# $OpenBSD: Makefile,v 1.28 2020/04/27 14:43:54 sthen Exp $

V=		4.3.1
COMMENT=	motion detection software for video

GH_ACCOUNT=	Motion-Project
GH_PROJECT=	motion
GH_TAGNAME=	release-$V
REVISION=	0

CATEGORIES=	multimedia

HOMEPAGE=	https://motion-project.github.io/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL (according to source files, v2 only. website says v2+).
PERMIT_PACKAGE=	Yes

WANTLIB += avcodec avdevice avformat avutil c iconv intl jpeg
WANTLIB += microhttpd pthread sqlite3 swscale webp webpmux

FLAVOR?=
FLAVORS=		mysql pgsql

FLAVOR_COMMA=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		FLAVOR_COMMA

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		databases/sqlite3 \
			graphics/jpeg \
			graphics/ffmpeg \
			graphics/libwebp \
			www/libmicrohttpd

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/motion \
			examplesdir=${PREFIX}/share/examples/motion \
			sysconfdir=${PREFIX}/share/examples/motion
FAKE_TARGET=		install install-data

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
CONFIGURE_ARGS=		--without-optimizecpu \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB+=		lib/mysql/mysqlclient z
.else
CONFIGURE_ARGS+=	--without-mysql --without-mariadb
.endif

.if ${FLAVOR:L:Mpgsql}
LIB_DEPENDS+=		databases/postgresql
WANTLIB+=		pq
CONFIGURE_ARGS+=	--with-pgsql-lib=${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

NO_TEST=		Yes

pre-configure:
	perl -pi -e s,/usr/local/etc,${SYSCONFDIR},g \
		${WRKSRC}/motion-dist.conf.in

.include <bsd.port.arch.mk>

.if ${ARCH:Mamd64}
CFLAGS+=	-mfpmath=sse -msse3
.endif

.include <bsd.port.mk>
