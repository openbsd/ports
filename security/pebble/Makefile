COMMENT=	small test server for RFC 8555 (ACME)

MODGO_MODNAME=	github.com/letsencrypt/pebble
MODGO_VERSION=	v1.0.1

DISTNAME=	pebble-${MODGO_VERSION}

CATEGORIES=	security

# MPL-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
NO_TEST=	Yes

MODGO_MODULES=	\
	github.com/jmhodges/clock		 v0.0.0-20160418191101-880ee4c33548 \
	github.com/letsencrypt/challtestsrv	 v1.0.2 \
	github.com/miekg/dns			 v1.1.1 \
	golang.org/x/crypto			 v0.0.0-20181203042331-505ab145d0a9 \
	golang.org/x/net			 v0.0.0-20181207154023-610586996380 \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sys			 v0.0.0-20181206074257-70b957f3b65e \
	gopkg.in/square/go-jose.v2		 v2.1.9

MODGO_MODFILES=	\
	golang.org/x/net	 v0.0.0-20181201002055-351d144fa1fc \
	golang.org/x/sys	 v0.0.0-20181205085412-a5c9d58dba9a

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/pebble
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/pebble/
	cp -r ${WRKSRC}/test ${PREFIX}/share/examples/pebble/

.include <bsd.port.mk>
