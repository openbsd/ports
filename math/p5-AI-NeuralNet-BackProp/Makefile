# $OpenBSD: Makefile,v 1.5 2002/12/29 19:43:50 fgsch Exp $

COMMENT=	"implement a back-propagation feed-forward neural network"

DISTNAME=	AI-NeuralNet-BackProp-0.89
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=AI/}

EXTRACT_SUFX=	.zip

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
