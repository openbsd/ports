# $OpenBSD: Makefile,v 1.5 2006/11/17 17:01:51 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	"extension for generating GUIDs/UUIDs"

MODULES=	cpan
DISTNAME=	Data-UUID-0.145
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
