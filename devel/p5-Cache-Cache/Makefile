# $OpenBSD: Makefile,v 1.5 2006/11/25 16:32:33 espie Exp $

COMMENT=	"perl cache interface"

MODULES=	cpan
DISTNAME=	Cache-Cache-1.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Digest-SHA1->=2.02:security/p5-Digest-SHA1 \
		:p5-IPC-ShareLite->=0.09:devel/p5-IPC-ShareLite \
		:p5-Error->=0.15:devel/p5-Error

.include <bsd.port.mk>
