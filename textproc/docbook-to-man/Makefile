# $OpenBSD: Makefile,v 1.2 2005/02/14 11:58:03 espie Exp $

COMMENT=	'convert docbook to man'
CATEGORIES=	textproc converters

VERSION=	0.0
HOMEPAGE=	http://www.oasis-open.org/docbook/tools/dtm/
MASTER_SITES= 	http://www.oasis-open.org/docbook/tools/dtm/
DIST_SUBDIR=	${VERSION}
DISTNAME=docbook-to-man
PKGNAME=docbook-to-man-${VERSION}
EXTRACT_SUFX=.tar.gz

# basic in debian
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

CONFIGURE_STYLE=imake noman

RUN_DEPENDS=	::textproc/sp  ::textproc/docbook

.include <bsd.port.mk>
