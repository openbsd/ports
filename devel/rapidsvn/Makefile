# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:27 espie Exp $

COMMENT=	graphical subversion client

VERSION=	0.9.4
DISTNAME=	rapidsvn-${VERSION}
REVISION =	7
CATEGORIES=	devel

HOMEPAGE=	http://www.rapidsvn.org/

SHARED_LIBS=	svncpp	0.0

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${HOMEPAGE}download/release/${VERSION}/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB += apr-1 aprutil-1 asn1 c crypto db expat gssapi krb5
WANTLIB += m neon pthread sasl2 sqlite3 ssl stdc++ z
WANTLIB += wx_base_xml wx_gtk2_html wx_gtk2_dbgrid wx_gtk2_adv wx_gtk2_xrc 
WANTLIB += wx_base_net wx_gtk2_qa wx_base wx_base_odbc wx_gtk2_core 
WANTLIB += wx_gtk2_aui wx_gtk2_richtext
WANTLIB += svn_client-1 svn_delta-1 svn_diff-1 svn_fs-1 svn_fs_base-1 
WANTLIB += svn_fs_fs-1 svn_ra-1 svn_ra_local-1 svn_ra_svn-1 svn_repos-1 
WANTLIB += svn_subr-1 svn_wc-1 svn_fs_util-1 svn_ra_neon-1

LIB_DEPENDS=	x11/wxWidgets>=2.6.3 \
		devel/subversion>=1.2
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-apr-config=${LOCALBASE}/bin/apr-1-config \
	   	--with-apu-config=${LOCALBASE}/bin/apu-1-config

.include <bsd.port.mk>
