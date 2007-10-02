# $OpenBSD: Makefile,v 1.6 2007/10/02 19:09:44 jasper Exp $

COMMENT=		noninteractive ftp client
DISTNAME=		weex-2.6.1.5
PKGNAME=		${DISTNAME}p1
CATEGORIES=		net	

HOMEPAGE=		http://weex.sourceforge.net	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=weex/}	

MODULES=		devel/gettext

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/weex
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weex
	${INSTALL_DATA} ${WRKSRC}/doc/sample.weexrc \
			${PREFIX}/share/examples/weex

.include <bsd.port.mk>
