# $OpenBSD: Makefile,v 1.2 2005/03/15 23:31:34 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Perl interface to libPARI and GP"

DISTNAME=	Math-Pari-2.010603
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL + Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

BUILD_DEPENDS=	::math/pari:configure

PARIDIR=	math/pari

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	paridir=${WRKDIST}/pari

post-extract:
	ln -s ${WRKDIR}/${PARIDIR}/pari* ${WRKDIST}/pari

.include <bsd.port.mk>
