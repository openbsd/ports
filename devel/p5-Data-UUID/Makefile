# $OpenBSD: Makefile,v 1.13 2009/06/24 21:01:43 dhill Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.202
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
