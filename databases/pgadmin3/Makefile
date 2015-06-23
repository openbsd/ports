# $OpenBSD: Makefile,v 1.31 2015/06/23 07:26:21 bentley Exp $

COMMENT=	administration and development platform for PostgreSQL

V=		1.18.1
REVISION=	1
DISTNAME=	pgadmin3-$V
CATEGORIES=	databases devel

HOMEPAGE=	http://www.pgadmin.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++ crypto z

MASTER_SITES=	https://ftp.postgresql.org/pub/pgadmin3/release/v$V/src/ \
		ftp://ftp.postgresql.org/pub/pgadmin3/release/v$V/src/

LIB_DEPENDS=	x11/wxWidgets>=2.8.7 \
		databases/postgresql \
		textproc/libxml>=2.4.8 \
		textproc/libxslt
WANTLIB +=      wx_base_xml wx_gtk2_html \
		wx_gtk2_stc wx_gtk2_adv wx_gtk2_aui wx_gtk2_xrc \
		wx_base_net wx_base wx_gtk2_core \
		pq>=4 xml2>=6 xslt>=3

BUILD_DEPENDS +=	databases/postgresql,-server \
			textproc/py-sphinx

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CXXFLAGS}"
CONFIGURE_ARGS=	--with-pgsql=${LOCALBASE} 

USE_GMAKE=	Yes

.include <bsd.port.mk>
