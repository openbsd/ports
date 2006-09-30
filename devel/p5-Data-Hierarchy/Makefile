# $OpenBSD: Makefile,v 1.2 2006/09/30 11:29:18 kevlo Exp $

COMMENT=	"handle data in a hierarchical structure"

DISTNAME=	Data-Hierarchy-0.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Clone->=0.15:devel/p5-Clone \
		:p5-Test-Exception->=0.21:devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
