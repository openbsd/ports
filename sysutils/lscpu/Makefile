# $OpenBSD: Makefile,v 1.2 2018/04/28 04:45:48 bcallah Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =	gather and display CPU architecture information
DISTNAME =	lscpu-${GH_TAGNAME}
CATEGORIES =	sysutils

GH_ACCOUNT =	NanXiao
GH_PROJECT =	lscpu
GH_TAGNAME =	1.1.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

NO_TEST =	Yes

.include <bsd.port.mk>
