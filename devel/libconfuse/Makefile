# $OpenBSD: Makefile,v 1.2 2006/12/15 17:22:07 sturm Exp $

COMMENT=		"configuration file parser library"
DISTNAME=		confuse-2.5
PKGNAME=		lib${DISTNAME}p0
SHARED_LIBS=		confuse 0.0	# .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.nongnu.org/confuse/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.savannah.gnu.org/releases/confuse/

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		::devel/pkgconfig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libconfuse/tutorial/
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/libconfuse
	${INSTALL_DATA} ${WRKSRC}/doc/tutorial-html/* \
		${PREFIX}/share/doc/libconfuse/tutorial
.include <bsd.port.mk>
