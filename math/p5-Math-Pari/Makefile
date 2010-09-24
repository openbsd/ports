# $OpenBSD: Makefile,v 1.8 2010/09/24 15:32:33 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
DISTNAME=	Math-Pari-2.010800
REVISION=	1
CATEGORIES=	math

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

BUILD_DEPENDS=	::math/pari:configure

PARIDIR=	math/pari

CONFIGURE_ARGS=	paridir=${WRKDIST}/pari

post-extract:
	ln -s ${WRKDIR}/${PARIDIR}/pari* ${WRKDIST}/pari

.include <bsd.port.mk>
