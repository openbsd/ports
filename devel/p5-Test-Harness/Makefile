# $OpenBSD: Makefile,v 1.11 2002/05/27 05:27:33 shell Exp $

COMMENT=	"perl module for running perl test scripts with statistics"

VERSION=	2.23
DISTNAME=	Test-Harness-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.531

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

post-patch:
	@perl -pi.orig -e 'm.INSTALLDIRS.&&s,.,,sg' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
