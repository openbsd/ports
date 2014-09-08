# $OpenBSD: Makefile,v 1.37 2014/09/08 07:01:58 ajacoutot Exp $

COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.30.0
SHARED_LIBS +=  neon                 29.0     # 30.0

CATEGORIES=		net www devel

HOMEPAGE=		http://www.webdav.org/neon/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto expat m proxy pthread ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

LIB_DEPENDS =		net/libproxy

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_CERTUTIL="" \
			ac_cv_path_PK12UTIL=""

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/neon/

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ca-bundle=/etc/ssl/cert.pem \
			--with-ssl=openssl \
			--with-expat \
			--with-libproxy \
			--without-pakchois \
			--without-gssapi \
			--enable-nls

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/neon
.for i in README NEWS BUGS TODO THANKS
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/neon
.endfor
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
