# $OpenBSD: Makefile,v 1.1.1.1 2007/12/07 22:01:29 okan Exp $

COMMENT=	fast FTP and SFTP GUI client with a lot of features

V=		3.0.4
PKGNAME=	filezilla-$V
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

WANTLIB=	c m pthread stdc++ z

LIB_DEPENDS=	gcrypt.>=13::security/libgcrypt \
		gpg-error.>=1::security/libgpg-error \
		gnutls.>=13::security/gnutls \
		iconv.>=4::converters/libiconv \
		idn::devel/libidn \
		intl.>=3:gettext->=0.10.38:devel/gettext \
		wx_gtk2_aui,wx_base_xml,wx_base_odbc,wx_gtk2_html,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.8.6:x11/wxWidgets

RUN_DEPENDS=	::devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
WRKDIST=	${WRKDIR}/filezilla-$V

do-regress:
	@cd ${WRKSRC}/tests && ${MAKE_PROGRAM} test && ./test

.include <bsd.port.mk>
