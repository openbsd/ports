# $OpenBSD: Makefile,v 1.1.1.1 2014/10/10 13:32:05 sthen Exp $

COMMENT=	motion detection software for video

GH_ACCOUNT=	Mr-Dave
GH_PROJECT=	motion
GH_COMMIT=	7cfdf13cd63378e45589650f7d20195cb7bf9936
DISTNAME=	motion-0.20140910

CATEGORIES=	multimedia

HOMEPAGE=	http://www.lavrsen.dk/foswiki/bin/view/Motion/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPL (according to source files, v2 only. website says v2+).
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL avcodec avformat avutil c jpeg m pthread sqlite3 swscale z

FLAVOR?=
FLAVORS=		mysql pgsql

LIB_DEPENDS=		graphics/jpeg \
			graphics/ffmpeg

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/motion \
			examplesdir=${PREFIX}/share/examples/motion

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68
CONFIGURE_ARGS=		--without-optimizecpu \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB+=		lib/mysql/mysqlclient
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

pre-configure:
	perl -pi -e s,/usr/local/etc,${SYSCONFDIR},g \
		${WRKSRC}/motion-dist.conf.in

.include <bsd.port.mk>
