# $OpenBSD: Makefile,v 1.9 2009/06/17 01:30:16 sthen Exp $

COMMENT=	graphical subversion client

VERSION=	0.9.4
DISTNAME=	rapidsvn-${VERSION}
PKGNAME=	${DISTNAME}p6
CATEGORIES=	devel

HOMEPAGE=	http://www.rapidsvn.org/

SHARED_LIBS=	svncpp	0.0

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${HOMEPAGE}download/release/${VERSION}/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB += apr-1 aprutil-1 asn1 c crypto db expat gssapi krb5
WANTLIB += m neon pthread sasl2 sqlite3 ssl stdc++ z

LIB_DEPENDS=	wx_base_xml,wx_gtk2_html,wx_gtk2_dbgrid,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_qa,wx_base,wx_base_odbc,wx_gtk2_core,wx_gtk2_aui,wx_gtk2_richtext:wxWidgets-gtk2->=2.6.3:x11/wxWidgets \
		svn_client-1,svn_delta-1,svn_diff-1,svn_fs-1,svn_fs_base-1,svn_fs_fs-1,svn_ra-1,svn_ra_local-1,svn_ra_svn-1,svn_repos-1,svn_subr-1,svn_wc-1,svn_fs_util-1,svn_ra_neon-1:subversion->=1.2:devel/subversion

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-apr-config=${LOCALBASE}/bin/apr-1-config \
	   	--with-apu-config=${LOCALBASE}/bin/apu-1-config

.include <bsd.port.mk>
