# $OpenBSD: Makefile,v 1.2 2004/01/17 15:58:10 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"interface to the UNIX system logger"

DISTNAME=	Syslog-0.97
PKGNAME=	p5-Unix-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	Ibrahim Khalifa <ibo@toontown.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Unix/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
