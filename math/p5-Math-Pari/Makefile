# $OpenBSD: Makefile,v 1.11 2010/12/03 11:45:39 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
DISTNAME=	Math-Pari-2.010800
REVISION=	2
CATEGORIES=	math
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

BUILD_DEPENDS=	math/pari:configure

PARIDIR=	math/pari

CONFIGURE_ARGS=	paridir=${WRKDIST}/pari

post-extract:
	ln -s ${WRKDIR}/${PARIDIR}/pari* ${WRKDIST}/pari

.include <bsd.port.mk>
