# $OpenBSD: Makefile,v 1.7 2002/07/10 20:48:13 avsm Exp $

COMMENT=	"store multi-level hash structure in single-level tied hash"

DISTNAME=	MLDBM-2.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MLDBM/}

BUILD_DEPENDS=	:p5-FreezeThaw->=0.3:devel/p5-FreezeThaw
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
