# $OpenBSD: Makefile,v 1.5 2009/10/13 15:07:45 ajacoutot Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.0.4
PKGNAME=	filezilla-$Vp3
DISTNAME=	FileZilla_$V_src
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=filezilla/}
HOMEPAGE=	http://www.filezilla-project.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gcrypt gpg-error m pthread stdc++ tasn1 z

MODULES=	devel/gettext
LIB_DEPENDS=	gnutls.>=13::security/gnutls \
		idn::devel/libidn \
		wx_gtk2_aui,wx_base_xml,wx_base_odbc,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core,wx_gtk2_richtext:wxWidgets-gtk2->=2.8.6:x11/wxWidgets

BUILD_DEPENDS=	::devel/cppunit
RUN_DEPENDS=	::devel/desktop-file-utils

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/filezilla-$V

# XXX check on update whether this is still necessary
post-extract:
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${WRKDIR}/bin

do-regress:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>
