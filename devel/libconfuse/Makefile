# $OpenBSD: Makefile,v 1.11 2013/10/24 15:18:00 ajacoutot Exp $

COMMENT=		configuration file parser library
DISTNAME=		confuse-2.7
PKGNAME=		lib${DISTNAME}
REVISION=		1
SHARED_LIBS=		confuse 1.0	# .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.nongnu.org/confuse/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=confuse/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libconfuse/tutorial/
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/libconfuse
	${INSTALL_DATA} ${WRKSRC}/doc/tutorial-html/* \
		${PREFIX}/share/doc/libconfuse/tutorial

.include <bsd.port.mk>
