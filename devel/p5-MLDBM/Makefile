# $OpenBSD: Makefile,v 1.9 2004/06/26 07:35:06 xsa Exp $

COMMENT=	"store multi-level hash structure in single-level tied hash"

DISTNAME=	MLDBM-2.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MLDBM/}
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

RUN_DEPENDS=	:p5-FreezeThaw->=0.3:devel/p5-FreezeThaw
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
