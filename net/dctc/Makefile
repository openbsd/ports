# $OpenBSD: Makefile,v 1.1.1.1 2002/01/31 12:21:53 naddy Exp $

COMMENT=		"Direct Connect clone"

DISTNAME=		dctc-0.68.0
CATEGORIES=		net
NEED_VERSION=   	1.504
HOMEPAGE=		http://ac2i.tzo.com/dctc/

MAINTAINER=		Nils Nordman <nino@nforced.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=    	glib.1.2,gthread.1.2::devel/glib

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-DMSG_NOSIGNAL=0"

post-configure:
	@cd ${WRKSRC}; touch Makefile.in src/Makefile.in aclocal.m4 stamp-h.in

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dctc; \
	    cp -R ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/dctc/

.include <bsd.port.mk>
