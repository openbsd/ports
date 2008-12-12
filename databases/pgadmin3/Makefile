# $OpenBSD: Makefile,v 1.9 2008/12/12 12:25:16 pea Exp $

COMMENT=	administration and development platform for PostgreSQL

VERSION=	1.8.4
DISTNAME=	pgadmin3-${VERSION}
CATEGORIES=	databases devel

HOMEPAGE=	http://www.pgadmin.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c iconv m pthread stdc++ z

MASTER_SITES=	ftp://ftp.postgresql.org/pub/pgadmin3/release/v${VERSION}/src/

LIB_DEPENDS=	wx_base_xml,wx_base_odbc,wx_gtk2_html,wx_gtk2_richtext,wx_gtk2_stc,wx_gtk2_ogl,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.8.7:x11/wxWidgets \
		pq.>=4::databases/postgresql \
		xml2.>=6:libxml->=2.4.8:textproc/libxml \
		xslt.>=3::textproc/libxslt

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CXXFLAGS}"

CONFIGURE_ARGS=	--with-pgsql=${LOCALBASE} \
		--with-pgsql-include=${LOCALBASE}/include/postgresql

.include <bsd.port.mk>
