# $OpenBSD: Makefile,v 1.4 2005/01/30 18:35:22 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"interface to the UNIX system logger"

DISTNAME=	Unix-Syslog-0.100
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	Ibrahim Khalifa <ibo@toontown.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Unix/MHARNISCH/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
