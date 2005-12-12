# $OpenBSD: Makefile,v 1.2 2005/12/12 19:06:10 sturm Exp $

COMMENT=	"client for the Secure File Transfer Protocol"

DISTNAME=	Net-SFTP-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-SSH-Perl

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
