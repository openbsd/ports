# $OpenBSD: Makefile,v 1.7 2002/12/29 20:19:11 fgsch Exp $

COMMENT=	"interface to compute differences between two objects"

DISTNAME=	Algorithm-Diff-1.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Algorithm/}

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/${DISTNAME:S/a//}

.include <bsd.port.mk>
