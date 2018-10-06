# $OpenBSD: Makefile,v 1.10 2018/10/06 16:33:51 sthen Exp $

COMMENT =	pass compatible password manager written in go

GH_ACCOUNT =	gopasspw
GH_PROJECT =	gopass
GH_TAGNAME =	f64cc6cb265f576b8937ed70a419ffdfb2c779da
V =		1.8.2
DISTNAME =	gopass-$Vpl1

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c pthread

#MASTER_SITES =	https://github.com/gopasspw/gopass/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "main.version=${V}"

RUN_DEPENDS =	devel/git \
		security/gnupg2

ALL_TARGET =	github.com/gopasspw/gopass

# Tests require MODGO_ENV, but break in weird ways when it is set.
NO_TEST =	Yes

# XXX go SNAFU means we can't patch source files
post-configure:
	sed -i 's,Atimespec,Atim,g' ${WRKSRC}/vendor/gopkg.in/src-d/go-git.v4/worktree_bsd.go

.include <bsd.port.mk>
