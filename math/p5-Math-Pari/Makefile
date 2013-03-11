# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:56 espie Exp $

# Lacks p5-Term-Gnuplot regress dependency!

SHARED_ONLY=	Yes

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
DISTNAME=	Math-Pari-2.010800
REVISION=	3
CATEGORIES=	math
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m

BUILD_DEPENDS=	math/pari:configure
USE_X11 =	Yes

PARIDIR=	math/pari

CONFIGURE_ARGS=	paridir=${WRKDIST}/pari

post-extract:
	ln -s ${WRKDIR}/${PARIDIR}/pari* ${WRKDIST}/pari

.include <bsd.port.mk>
