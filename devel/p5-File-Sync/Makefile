# $OpenBSD: Makefile,v 1.3 2004/08/10 08:10:17 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the sync() system functions"

V=		0.09
DISTNAME=	File-Sync-${V}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
