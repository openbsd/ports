# $OpenBSD: Makefile,v 1.4 2019/07/17 14:39:43 danj Exp $

COMMENT =	package manager for Go

VERSION =	0.13.2
GH_ACCOUNT =	Masterminds
GH_PROJECT =	glide
GH_TAGNAME =	v${VERSION}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://glide.sh/

WANTLIB +=	c pthread
#MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
