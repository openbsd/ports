# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:48 naddy Exp $

# Lacks p5-Term-Gnuplot regress dependency!

COMMENT=	Perl interface to libPARI and GP

MODULES=	cpan
# beware may need EPOCH if updating
DISTNAME=	Math-Pari-2.01080605
CATEGORIES=	math
REVISION=	1

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m perl

BUILD_DEPENDS=	math/pari:configure
USE_X11 =	Yes

PARIDIR=	math/pari

CONFIGURE_ARGS=	paridir=${WRKDIST}/pari

post-extract:
	ln -s ${WRKDIR}/${PARIDIR}/pari* ${WRKDIST}/pari

.include <bsd.port.mk>
