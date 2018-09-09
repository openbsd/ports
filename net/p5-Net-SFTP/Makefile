# $OpenBSD: Makefile,v 1.13 2018/09/09 23:45:49 sthen Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SFTP-0.12
CATEGORIES=	net security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SSH-Perl \
		math/p5-Math-Int64

.include <bsd.port.mk>
