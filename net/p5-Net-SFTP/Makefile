# $OpenBSD: Makefile,v 1.3 2007/01/14 20:49:05 simon Exp $

COMMENT=	"client for the Secure File Transfer Protocol"

MODULES=	cpan
DISTNAME=	Net-SFTP-0.10
CATEGORIES=	net security

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SSH-Perl

.include <bsd.port.mk>
