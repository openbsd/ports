COMMENT =	make JSON greppable

MODGO_MODNAME =	github.com/tomnomnom/gron
MODGO_VERSION =	v0.7.1
DISTNAME =	gron-${MODGO_VERSION}
REVISION =	0

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MODULES =	lang/go
WRKDIST =	${WRKSRC}

MODGO_MODULES =	\
	github.com/fatih/color		 v1.7.0 \
	github.com/mattn/go-colorable	 v0.1.13 \
	github.com/mattn/go-isatty	 v0.0.16 \
	github.com/nwidger/jsoncolor	 v0.0.0-20170215171346-75a6de4340e5 \
	github.com/pkg/errors		 v0.8.0 \
	golang.org/x/sys		 v0.0.0-20220811171246-fbc7d0a398ab

.include <bsd.port.mk>
