# $OpenBSD: Makefile,v 1.6 2004/01/17 15:58:10 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"calculate the similarity of two strings"

DISTNAME=	String-Similarity-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5 

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=String/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
