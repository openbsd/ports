# $OpenBSD: Makefile,v 1.1.1.1 2005/02/14 11:56:38 espie Exp $

COMMENT=	'convert docbook to man'
CATEGORIES=	textproc

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
