#   $OpenBSD: Makefile,v 1.1.1.1 2002/09/11 18:42:30 danh Exp $

COMMENT=	"implements a complete, RFC compliant SMTP server"

DISTNAME=	SMTP-Server-1.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/} \
		http://www.macgyver.org/software/perl/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

HOMEPAGE=	http://www.macgyver.org/software/perl/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
