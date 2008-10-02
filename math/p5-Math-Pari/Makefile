# $OpenBSD: Makefile,v 1.5 2008/10/02 20:38:08 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
DISTNAME=	Math-Pari-2.010603
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	math

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

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
