# $OpenBSD: Makefile,v 1.29 2012/06/16 09:01:29 ajacoutot Exp $

COMMENT=		HTTP and WebDAV client library, with C interface

DISTNAME=		neon-0.29.6
REVISION=		0
SHARED_LIBS=		neon    28.0 # 29.6
CATEGORIES=     	net www devel

HOMEPAGE=		http://www.webdav.org/neon/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 crypto expat gssapi krb5 m proxy ssl stdc++ z

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

USE_LIBTOOL=		Yes

LIB_DEPENDS =		net/libproxy

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv" \
			ac_cv_path_CERTUTIL="" \
			ac_cv_path_PK12UTIL=""

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/neon/

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ca-bundle=/etc/ssl/cert.pem \
			--with-ssl=openssl \
			--with-expat \
			--with-libproxy \
			--without-pakchois \
			--enable-nls

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/neon/macros
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/neon
.for i in README NEWS BUGS TODO THANKS
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/neon
.endfor
	cd ${WRKSRC}/macros && \
		tar cf - . | (cd ${PREFIX}/share/neon/macros; tar xf -)

.include <bsd.port.mk>
