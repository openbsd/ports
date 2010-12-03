# $OpenBSD: Makefile,v 1.13 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	perl cache interface

MODULES=	cpan
DISTNAME=	Cache-Cache-1.06
REVISION=	0
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
