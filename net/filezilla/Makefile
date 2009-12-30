# $OpenBSD: Makefile,v 1.7 2009/12/30 13:49:09 jasper Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.3.0.1
PKGNAME=	filezilla-$Vp4
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=filezilla/}
HOMEPAGE=	http://www.filezilla-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gpg-error m pthread stdc++ tasn1 z

MODULES=	devel/gettext
LIB_DEPENDS=	idn::devel/libidn \
		gnutls.>=13::security/gnutls \
		dbus-1::x11/dbus \
		wx_gtk2_aui,wx_base_xml,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.8.6:x11/wxWidgets

BUILD_DEPENDS=	::devel/cppunit
RUN_DEPENDS=	::devel/desktop-file-utils

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-dbus \
		--with-tinyxml=builtin \
		--disable-autoupdatecheck
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/filezilla-$V

do-regress:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>
