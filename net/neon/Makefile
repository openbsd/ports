# $OpenBSD: Makefile,v 1.21 2008/05/02 08:14:53 steven Exp $

COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.26.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		neon	26.2
CATEGORIES=     	net www devel

HOMEPAGE=		http://www.webdav.org/neon/

MODULES=		devel/gettext

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto expat ssl z

MASTER_SITES=		${HOMEPAGE}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ssl --enable-nls \
			--with-expat

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/neon
.for i in README NEWS BUGS TODO THANKS
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/neon
.endfor
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
