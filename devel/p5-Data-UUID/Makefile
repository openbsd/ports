# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:15 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.217
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
