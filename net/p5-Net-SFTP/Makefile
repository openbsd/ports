# $OpenBSD: Makefile,v 1.5 2010/03/22 13:54:21 sturm Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
DISTNAME=	Net-SFTP-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SSH-Perl

.include <bsd.port.mk>
