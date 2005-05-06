# $OpenBSD: Makefile,v 1.7 2005/05/06 07:58:39 kevlo Exp $

COMMENT=	"subversion repository mirroring tool"

DISTNAME=	SVN-Mirror-0.60
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/C/CL/CLKAO/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-SVN-Simple->=0.27:devel/p5-SVN-Simple \
		:p5-Data-UUID->=0.11:devel/p5-Data-UUID \
		:p5-Term-ReadKey->=2.21:devel/p5-Term-ReadKey \
		:p5-VCP-autrijus->=0.9:devel/p5-VCP-autrijus \
		:p5-URI->=1.30:www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
