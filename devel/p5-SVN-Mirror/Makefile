# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:21 espie Exp $

COMMENT=	subversion repository mirroring tool

DISTNAME=	SVN-Mirror-0.75
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
RUN_DEPENDS=	devel/p5-SVN-Simple>=0.27 \
		devel/p5-Class-Accessor>=0.19 \
		devel/p5-Data-UUID>=0.11 \
		devel/p5-File-chdir>=0.06 \
		devel/p5-Time-TimeDate>=1.16 \
		devel/p5-Term-ReadKey>=2.21 \
		devel/p5-VCP-autrijus>=0.9 \
		textproc/p5-Sort-Versions>=1.5 \
		www/p5-URI>=1.30
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ENV+= LD_PRELOAD=libpthread.so # XXX remove when perl is -lpthread

.include <bsd.port.mk>
