# $OpenBSD: Makefile,v 1.18 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	subversion repository mirroring tool

DISTNAME=	SVN-Mirror-0.75
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes
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

.include <bsd.port.mk>
