# $OpenBSD: Makefile,v 1.1.1.1 2005/03/30 07:27:34 jolan Exp $
PKG_ARCH=	*

COMMENT=	"File::Find::Rule adapted to Filesys::Virtual"
DISTNAME=	File-Find-Rule-Filesys-Virtual-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	:p5-File-Find-Rule-*:devel/p5-File-Find-Rule \
		:p5-Filesys-Virtual-Plain-*:sysutils/p5-Filesys-Virtual-Plain
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
