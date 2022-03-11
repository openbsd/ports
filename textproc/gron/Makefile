COMMENT =	make JSON greppable

MODGO_MODNAME =	github.com/tomnomnom/gron
MODGO_VERSION =	v0.6.1

DISTNAME =	gron-${MODGO_VERSION}
PKGNAME =	gron-0.6.1

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/fatih/color		 v1.7.0 \
	github.com/mattn/go-colorable	 v0.0.9 \
	github.com/mattn/go-isatty	 v0.0.4 \
	github.com/nwidger/jsoncolor	 v0.0.0-20170215171346-75a6de4340e5 \
	github.com/pkg/errors		 v0.8.0

.include <bsd.port.mk>
