# $OpenBSD: Makefile,v 1.11 2008/10/05 22:03:42 jasper Exp $

SHARED_ONLY=	Yes
COMMENT=	extension for generating GUIDs/UUIDs

MODULES=	cpan
DISTNAME=	Data-UUID-1.148
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS= </dev/null

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
