# $OpenBSD: Makefile,v 1.8 2002/09/21 11:41:04 avsm Exp $

COMMENT=	"store multi-level hash structure in single-level tied hash"

DISTNAME=	MLDBM-2.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MLDBM/}
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

BUILD_DEPENDS=	:p5-FreezeThaw->=0.3:devel/p5-FreezeThaw
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
