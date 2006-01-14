# $OpenBSD: Makefile,v 1.9 2006/01/14 09:49:27 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"quota manipulation module"

DISTNAME=	Quota-1.5.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils perl5

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Quota/}

WANTLIB=	rpcsvc

CONFIGURE_STYLE= perl

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
