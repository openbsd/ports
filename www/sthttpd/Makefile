COMMENT=	tiny/turbo/throttling HTTP server

GH_ACCOUNT=	blueness
GH_PROJECT=	sthttpd
GH_TAGNAME=	v2.27.1
CATEGORIES=	www

HOMEPAGE=	https://github.com/blueness/sthttpd

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

CONFIGURE_STYLE= autoreconf
CONFIGURE_ENV+=	WEBDIR="/var/www/htdocs" WEBGROUP=www

FAKE_FLAGS=	cgidir="${PREFIX}/libexec/sthttpd"

NO_TEST=	Yes

post-extract:
	mv ${WRKSRC}/docs/htpasswd.1 ${WRKSRC}/docs/th_htpasswd.1
	sed -i -e s#htpasswd#th_htpasswd#g ${WRKSRC}/docs/th_htpasswd.1

.include <bsd.port.mk>
