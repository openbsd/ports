# $OpenBSD: Makefile,v 1.3 2002/03/21 21:09:18 espie Exp $

COMMENT=	"module to implement an accurate neural network mesh"

DISTNAME=	AI-NeuralNet-Mesh-0.44
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= AI

EXTRACT_SUFX=	.zip

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}

.include <bsd.port.mk>
