# $OpenBSD: Makefile,v 1.20 2006/05/02 21:28:26 aanriot Exp $

COMMENT=	"simple WATCHdog log filtering program"

DISTNAME=	swatch-3.0.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swatch/} \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

HOMEPAGE=	http://swatch.sourceforge.net/

MAINTAINER=	Jason Peel <jsyn@openbsd.org>

RUN_DEPENDS=	:p5-Date-Calc-*:devel/p5-Date-Calc \
		:p5-File-Tail-*:devel/p5-File-Tail \
		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
