# $OpenBSD: Makefile,v 1.12 2010/11/26 07:19:00 espie Exp $

COMMENT=	perl cache interface

MODULES=	cpan
DISTNAME=	Cache-Cache-1.06
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=2.02 \
		devel/p5-IPC-ShareLite>=0.09 \
		devel/p5-Error>=0.15

.include <bsd.port.mk>
