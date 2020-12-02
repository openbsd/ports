# $OpenBSD: Makefile,v 1.2 2020/12/02 08:23:04 gonzalo Exp $

COMMENT =	disk Usage/free utility

MODGO_MODNAME =	github.com/muesli/duf
MODGO_VERSION =	v0.5.0

DISTNAME =	duf-${MODGO_VERSION}
PKGNAME =	duf-0.5.0

CATEGORIES =	sysutils

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/jedib0t/go-pretty/v6		 v6.0.5 \
	github.com/lucasb-eyer/go-colorful	 v1.0.3 \
	github.com/mattn/go-isatty		 v0.0.12 \
	github.com/mattn/go-runewidth		 v0.0.9 \
	github.com/muesli/termenv		 v0.7.4 \
	github.com/pkg/profile			 v1.2.1 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/stretchr/testify		 v1.2.2 \
	golang.org/x/crypto			 v0.0.0-20200820211705-5c72a883971a \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys			 v0.0.0-20200918174421-af09f7315aff \
	golang.org/x/text			 v0.3.0

MODGO_MODFILES =	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys	 v0.0.0-20180816055513-1c9583448a9c \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys	 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys	 v0.0.0-20200116001909-b77594299b42

.include <bsd.port.mk>
