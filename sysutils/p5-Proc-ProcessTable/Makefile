# $OpenBSD: Makefile,v 1.7 2006/10/29 18:08:24 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to the system's process table"

DISTNAME=	Proc-ProcessTable-0.41
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	sysutils perl5

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Proc/}

WANTLIB=	kvm

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
