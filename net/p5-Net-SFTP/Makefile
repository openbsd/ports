# $OpenBSD: Makefile,v 1.9 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
DISTNAME=	Net-SFTP-0.10
REVISION=	1
CATEGORIES=	net security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SSH-Perl

.include <bsd.port.mk>
