# $OpenBSD: Makefile,v 1.2 2002/12/03 19:29:08 nino Exp $

COMMENT=		"Direct Connect clone"

DISTNAME=		dctc-0.68.0
CATEGORIES=		net
HOMEPAGE=		http://ac2i.tzo.com/dctc/

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
