# $OpenBSD: Makefile,v 1.1.1.1 2005/04/14 02:26:36 msf Exp $

COMMENT= 	"run perl program as a daemon process"

DISTNAME=	Proc-Daemon-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Proc/}

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
