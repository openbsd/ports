# $OpenBSD: Makefile,v 1.43 2020/06/09 07:14:44 jasper Exp $

COMMENT=	administration and development platform for PostgreSQL

V=		1.22.1
DISTNAME=	pgadmin3-$V
CATEGORIES=	databases devel
REVISION=	4

HOMEPAGE=	https://www.pgadmin.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# Artistic license
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m pq wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_stc-3.0
WANTLIB += wx_gtk3u_xrc-3.0 xml2 xslt z

MASTER_SITES=	https://ftp.postgresql.org/pub/pgadmin/pgadmin3/v$V/src/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	x11/wxWidgets>=3.0.4 \
		databases/postgresql \
		textproc/libxml>=2.4.8 \
		textproc/libxslt

BUILD_DEPENDS +=	databases/postgresql,-server \
			textproc/py-sphinx

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CXXFLAGS}"
CONFIGURE_ARGS=	--with-pgsql=${LOCALBASE} \
		--with-wx-version=3.0

USE_GMAKE=	Yes

.include <bsd.port.mk>
