# OpenBSD makefile for:	kaffe
# Version required:	0.8.4
# Date created:		1998-Sep-2
# Whom:			dugsong@monkey.org
#
# Relevant URLs:	ftp://ftp.kaffe.org/pub/kaffe/

DISTNAME=	kaffe-0.8.4
CATEGORIES=     lang
DIST_SUBDIR=	${PKGNAME}

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/ \
		ftp://ftp.cs.columbia.edu/pub/kaffe/

EXTRACT_SUFX=	.tgz

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME}-package-biss-net.com${EXTRACT_SUFX} \
		${DISTNAME}-package-epfl.ch${EXTRACT_SUFX} \
		${DISTNAME}-package-javasoft.com${EXTRACT_SUFX}

MAINTAINER=	ports@OpenBSD.ORG

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
