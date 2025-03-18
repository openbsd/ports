COMMENT =	command-line RDAP (Registration Data Access Protocol) client

MODGO_MODNAME =	github.com/openrdap/rdap
MODGO_VERSION =	v0.9.1
REVISION =	0

DISTNAME =	openrdap-${MODGO_VERSION}

CATEGORIES =	net

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/alecthomas/kingpin/v2	 v2.3.2 \
	github.com/alecthomas/units		 v0.0.0-20211218093645-b94a6e3cc137 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/jarcoal/httpmock		 v1.3.0 \
	github.com/maxatome/go-testdeep		 v1.12.0 \
	github.com/mitchellh/go-homedir		 v1.1.0 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.8.2 \
	github.com/xhit/go-str2duration/v2	 v2.1.0 \
	golang.org/x/crypto			 v0.9.0 \
	golang.org/x/net			 v0.10.0 \
	golang.org/x/sys			 v0.8.0 \
	golang.org/x/term			 v0.8.0 \
	golang.org/x/text			 v0.9.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.2.2 \
	gopkg.in/yaml.v3			 v3.0.1

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/stretchr/testify	 v1.4.0

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rdap ${PREFIX}/bin/openrdap

.include <bsd.port.mk>
