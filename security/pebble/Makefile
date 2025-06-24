COMMENT=	small test server for RFC 8555 (ACME)

MODGO_MODNAME=	github.com/letsencrypt/pebble/v2
MODGO_VERSION=	v2.8.0

DISTNAME=	pebble-${MODGO_VERSION}

CATEGORIES=	security

# MPL-2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
NO_TEST=	Yes

MODGO_LDFLAGS=	-X 'main.version=${MODGO_VERSION:S/v//}'

MODGO_MODULES =	\
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/go-jose/go-jose/v4		 v4.1.0 \
	github.com/google/go-cmp		 v0.7.0 \
	github.com/letsencrypt/challtestsrv	 v1.3.2 \
	github.com/miekg/dns			 v1.1.62 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/stretchr/testify		 v1.10.0 \
	github.com/yuin/goldmark		 v1.4.13 \
	golang.org/x/crypto			 v0.38.0 \
	golang.org/x/mod			 v0.24.0 \
	golang.org/x/net			 v0.40.0 \
	golang.org/x/sync			 v0.14.0 \
	golang.org/x/sys			 v0.33.0 \
	golang.org/x/telemetry			 v0.0.0-20240521205824-bda55230c457 \
	golang.org/x/term			 v0.32.0 \
	golang.org/x/text			 v0.25.0 \
	golang.org/x/tools			 v0.33.0 \
	gopkg.in/yaml.v3			 v3.0.1
MODGO_MODFILES =	\
	github.com/google/go-cmp	 v0.6.0 \
	github.com/miekg/dns		 v1.1.43 \
	golang.org/x/mod		 v0.18.0 \
	golang.org/x/net		 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/net		 v0.27.0 \
	golang.org/x/sync		 v0.0.0-20210220032951-036812b2e83c \
	golang.org/x/sync		 v0.7.0 \
	golang.org/x/sys		 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys		 v0.0.0-20210303074136-134d130e1a04 \
	golang.org/x/sys		 v0.22.0 \
	golang.org/x/term		 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text		 v0.3.3 \
	golang.org/x/tools		 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools		 v0.13.0 \
	golang.org/x/tools		 v0.22.0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/pebble
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} ${PREFIX}/share/doc/pebble/
	cp -r ${WRKSRC}/test ${PREFIX}/share/examples/pebble/
	${INSTALL_MAN} ${WRKSRC}/docs/man1/* ${PREFIX}/man/man1/

.include <bsd.port.mk>
