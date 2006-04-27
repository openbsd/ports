# $OpenBSD: Makefile,v 1.4 2006/04/27 09:30:31 espie Exp $

COMMENT=	"perl cache interface"

DISTNAME=	Cache-Cache-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Cache/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Digest-SHA1->=2.02:security/p5-Digest-SHA1 \
		:p5-IPC-ShareLite->=0.09:devel/p5-IPC-ShareLite \
		:p5-Error->=0.15:devel/p5-Error

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
