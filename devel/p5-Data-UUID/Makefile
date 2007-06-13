# $OpenBSD: Makefile,v 1.7 2007/06/13 06:57:45 steven Exp $

SHARED_ONLY=	Yes
COMMENT=	"extension for generating GUIDs/UUIDs"

MODULES=	cpan
DISTNAME=	Data-UUID-0.145
PKGNAME=	p5-${DISTNAME}p0
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
