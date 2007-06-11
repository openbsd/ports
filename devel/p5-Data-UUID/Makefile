# $OpenBSD: Makefile,v 1.6 2007/06/11 11:01:27 simon Exp $

SHARED_ONLY=	Yes
COMMENT=	"extension for generating GUIDs/UUIDs"

MODULES=	cpan
DISTNAME=	Data-UUID-0.145
PKGNAME=	${DISTNAME}p0
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
