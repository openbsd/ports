# $OpenBSD: Makefile,v 1.8 2014/12/22 15:31:39 benoit Exp $

COMMENT=		create PDF tables with perl

V =			0.9.7
DISTNAME =		PDF-Table-${V}

CATEGORIES=		textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

WRKDIST =		${WRKDIR}/PDF-Table-Version_${V}

RUN_DEPENDS=		textproc/p5-PDF-API2

.include <bsd.port.mk>
