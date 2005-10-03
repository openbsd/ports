# $OpenBSD: Makefile,v 1.3 2005/10/03 14:23:27 naddy Exp $

COMMENT=		"noninteractive ftp client"
DISTNAME=		weex-2.6.1.5
PKGNAME=		${DISTNAME}p0
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

MODULES=		gettext

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
