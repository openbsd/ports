# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:33 espie Exp $

COMMENT=	"represent a series of changes in annotate form"

MODULES=	cpan
DISTNAME=	Algorithm-Annotate-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	:p5-Algorithm-Diff->=1.1901:devel/p5-Algorithm-Diff
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
