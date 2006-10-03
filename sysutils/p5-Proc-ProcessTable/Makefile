# $OpenBSD: Makefile,v 1.5 2006/10/03 16:26:51 jasper Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"interface to the system's process table"

DISTNAME=	Proc-ProcessTable-0.41
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Proc/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
