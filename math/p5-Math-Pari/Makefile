# $OpenBSD: Makefile,v 1.3 2006/12/24 19:50:52 dassow Exp $

SHARED_ONLY=	Yes

COMMENT=	"Perl interface to libPARI and GP"

MODULES=	cpan
DISTNAME=	Math-Pari-2.010603
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
