COMMENT =	make JSON greppable

V =		0.7.1

MODGO_MODNAME =	github.com/tomnomnom/gron
MODGO_VERSION =	v$V

DISTNAME =	gron-${MODGO_VERSION}
PKGNAME =	gron-$V

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
	github.com/pkg/errors		 v0.8.0 \
	golang.org/x/sys		 v0.0.0-20220412211240-33da011f77ad

.include <bsd.port.mk>
