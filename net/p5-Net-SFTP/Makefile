# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:54 espie Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
DISTNAME=	Net-SFTP-0.10
REVISION=	0
CATEGORIES=	net security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SSH-Perl

.include <bsd.port.mk>
