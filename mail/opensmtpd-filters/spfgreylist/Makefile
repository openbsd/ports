COMMENT =	SPF-aware greylisting filter for the OpenSMTPD daemon

FILTER_NAME =	spfgreylist
V =		1.0.0

MODGO_MODNAME =	github.com/poolpOrg/filter-${FILTER_NAME}
MODGO_VERSION =	v1.0.0

GH_ACCOUNT =	poolpOrg
GH_PROJECT =	filter-spfgreylist
GH_TAGNAME =	${MODGO_VERSION}

CATEGORIES =	mail

# ISC
PERMIT_PACKAGE =	Yes

MODULES =	lang/go
NO_TEST =	Yes

MODGO_MODULES = \
	blitiri.com.ar/go/spf	v1.5.1 \
	gopkg.in/check.v1	v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3	v3.0.1

.include <bsd.port.mk>
