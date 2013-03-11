# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:09 espie Exp $

COMMENT=		configuration file parser library
DISTNAME=		confuse-2.7
PKGNAME=		lib${DISTNAME}
REVISION=		0
SHARED_LIBS=		confuse 1.0	# .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.nongnu.org/confuse/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=confuse/}

MODULES=		devel/gettext \
			converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

USE_LIBTOOL=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libconfuse/tutorial/
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/libconfuse
	${INSTALL_DATA} ${WRKSRC}/doc/tutorial-html/* \
		${PREFIX}/share/doc/libconfuse/tutorial

.include <bsd.port.mk>
