# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:35 sthen Exp $

COMMENT=	client for the Secure File Transfer Protocol

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SFTP-0.12
CATEGORIES=	net security
REVISION=	0

# GPL/Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-SSH-Perl \
		math/p5-Math-Int64

.include <bsd.port.mk>
