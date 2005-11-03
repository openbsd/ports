# $OpenBSD: Makefile,v 1.6 2005/11/03 18:28:56 naddy Exp $

COMMENT=		"Direct Connect clone"

DISTNAME=		dctc-0.68.0
CATEGORIES=		net
HOMEPAGE=		http://ac2i.homelinux.com/dctc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=    	glib.1.2,gthread.1.2::devel/glib

SEPARATE_BUILD=		concurrent
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-DMSG_NOSIGNAL=0"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dctc; \
	    cp -R ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/dctc/

.include <bsd.port.mk>
