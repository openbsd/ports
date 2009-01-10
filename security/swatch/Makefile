# $OpenBSD: Makefile,v 1.25 2009/01/10 21:47:38 rui Exp $

COMMENT=	simple log monitoring program

DISTNAME=	swatch-3.2.3
CATEGORIES=	security sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swatch/}

HOMEPAGE=	http://swatch.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

RUN_DEPENDS=	:p5-Date-Calc-*:devel/p5-Date-Calc \
		:p5-File-Tail-*:devel/p5-File-Tail \
		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate \
		:p5-DateManip-*:converters/p5-DateManip
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
PKG_ARCH=	*

.include <bsd.port.mk>
