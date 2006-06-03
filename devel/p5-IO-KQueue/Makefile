# $OpenBSD: Makefile,v 1.1.1.1 2006/06/03 07:18:42 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		"perl interface to the BSD kqueue system call"

DISTNAME=		IO-KQueue-0.30
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Srebrenko Sehic <haver@insecure.dk>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=IO/}

CONFIGURE_STYLE=	perl

post-extract:
	@rm -f ${WRKDIST}/._*

.include <bsd.port.mk>
