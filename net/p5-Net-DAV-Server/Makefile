# $OpenBSD: Makefile,v 1.2 2005/12/07 21:04:37 wilfried Exp $
PKG_ARCH=	*

COMMENT=	"perl module to provide a DAV server"
DISTNAME=	Net-DAV-Server-1.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Class-Accessor-*:devel/p5-Class-Accessor \
		:p5-File-Slurp-*:devel/p5-File-Slurp \
		:p5-File-Find-Rule-Filesys-Virtual-*:devel/p5-File-Find-Rule-Filesys-Virtual \
		:p5-XML-LibXML-*:textproc/p5-XML-LibXML \
		:p5-libwww-*:www/p5-libwww
REGRESS_DEPENDS=:p5-Test-Pod-*:devel/p5-Test-Pod

.include <bsd.port.mk>
