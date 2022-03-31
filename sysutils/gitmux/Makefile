COMMENT =	git in your tmux status bar

MODGO_MODNAME =	github.com/arl/gitmux
MODGO_VERSION =	v0.7.9

DISTNAME =	gitmux-${MODGO_VERSION}

CATEGORIES =	sysutils devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/arl/gitmux

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gitmux
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/gitmux

MODGO_MODULES =	\
	github.com/arl/gitstatus	 v0.5.1 \
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/kr/pretty		 v0.1.0 \
	github.com/kr/pty		 v1.1.1 \
	github.com/kr/text		 v0.1.0 \
	github.com/pkg/diff		 v0.0.0-20210226163009-20ebb0f2a09e \
	github.com/pmezard/go-difflib	 v1.0.0 \
	github.com/rogpeppe/go-internal	 v1.8.1 \
	github.com/stretchr/objx	 v0.1.0 \
	github.com/stretchr/testify	 v1.7.0 \
	gopkg.in/check.v1		 v1.0.0-20180628173108-788fd7840127 \
	gopkg.in/errgo.v2		 v2.1.0 \
	gopkg.in/yaml.v3		 v3.0.0-20210107192922-496545a6307b

MODGO_MODFILES =	\
	github.com/stretchr/testify	 v1.3.0 \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3		 v3.0.0-20200313102051-9f266ea9e77c

.include <bsd.port.mk>
