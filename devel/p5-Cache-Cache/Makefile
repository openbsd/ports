# $OpenBSD: Makefile,v 1.2 2002/11/30 12:40:48 naddy Exp $

COMMENT=	"perl cache interface"

DISTNAME=	Cache-Cache-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Cache/}

BUILD_DEPENDS=	:p5-Digest-SHA1->=2.01:security/p5-Digest-SHA1 \
		:p5-IPC-ShareLite->=0.08:devel/p5-IPC-ShareLite \
		:p5-Error->=0.15:devel/p5-Error
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
