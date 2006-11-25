# $OpenBSD: Makefile,v 1.6 2006/11/25 16:32:34 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"recursively copy Perl datatypes"

MODULES=	cpan
DISTNAME=	Clone-0.20
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Taint-Runtime

.include <bsd.port.mk>
