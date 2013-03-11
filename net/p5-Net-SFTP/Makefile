# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:53 espie Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
DISTNAME=	Net-SFTP-0.10
REVISION=	1
CATEGORIES=	net security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SSH-Perl

.include <bsd.port.mk>
