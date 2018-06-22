# $OpenBSD: Makefile,v 1.1.1.1 2018/06/22 13:54:23 landry Exp $

COMMENT =	package manager for Go

VERSION =	0.13.1
GH_ACCOUNT =	Masterminds
GH_PROJECT =	glide
GH_TAGNAME =	v${VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://glide.sh/

MAINTAINER =	Kevin Wondratsch <bsd@kwondratsch.com>

WANTLIB +=	c pthread

#MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/go

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
