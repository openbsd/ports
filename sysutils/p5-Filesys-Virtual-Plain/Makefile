# $OpenBSD: Makefile,v 1.1.1.1 2005/03/30 02:56:42 jolan Exp $

COMMENT=	"perl module for a plain virtual filesystem"
DISTNAME=	Filesys-Virtual-Plain-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Filesys/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:p5-Filesys-Virtual-*:sysutils/p5-Filesys-Virtual
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
