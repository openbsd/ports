# $OpenBSD: Makefile,v 1.7 2010/09/15 13:52:12 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
DISTNAME=	Math-Pari-2.010800
REVISION=	0
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
