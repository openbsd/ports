# $OpenBSD: Makefile,v 1.28 2010/11/20 17:22:45 espie Exp $

COMMENT=	simple log monitoring program

DISTNAME=	swatch-3.2.3
REVISION =	0
CATEGORIES=	security sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swatch/}

HOMEPAGE=	http://swatch.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-File-Tail \
		devel/p5-Time-TimeDate \
		converters/p5-DateManip
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
USE_GROFF =	Yes
PKG_ARCH=	*

.include <bsd.port.mk>
