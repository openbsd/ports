# $OpenBSD: Makefile,v 1.3 2004/04/11 15:14:35 brad Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Perl extension to access the unix process table"

DISTNAME=	Proc-ProcessTable-0.39
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Proc/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
