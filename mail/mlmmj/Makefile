COMMENT=	mailing list manager

DISTNAME=	mlmmj-1.3.0
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://mlmmj.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv

MASTER_SITES=	http://mlmmj.org/releases/

LIB_DEPENDS=	converters/libiconv

# ./contrib/web/php-admin/htdocs/index.php.orig
# ./contrib/web/php-user/mlmmj.php.orig
PATCHORIG=	.pat.orig

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-receive-strip=yes

# make sure ${WRKSRC}/include/unistr.h is included instead of
# /usr/local/include/unistr.h from libunistring
CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

DOCS=	README* TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
		${PREFIX}/share/doc/mlmmj/README.receive-strip

.include <bsd.port.mk>
