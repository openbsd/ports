# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:54 naddy Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SFTP-0.10
REVISION=	1
CATEGORIES=	net security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SSH-Perl

.include <bsd.port.mk>
