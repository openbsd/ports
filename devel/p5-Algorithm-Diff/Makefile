# $OpenBSD: Makefile,v 1.5 2002/05/13 18:50:40 espie Exp $

COMMENT=	"interface to compute differences between two objects"

DISTNAME=	Algorithm-Diff-1.11a
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Algorithm/}

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/${DISTNAME:S/a//}

.include <bsd.port.mk>
