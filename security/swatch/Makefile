# $OpenBSD: Makefile,v 1.18 2003/12/08 04:05:28 margarida Exp $

COMMENT=	"simple WATCHdog log filtering program"

DISTNAME=	swatch-3.0.8
CATEGORIES=	security sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=swatch/} \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

HOMEPAGE=	http://swatch.sourceforge.net/

MAINTAINER=	Jason Peel <jsyn@openbsd.org>

BUILD_DEPENDS=	:p5-Date-Calc-*:devel/p5-Date-Calc \
		:p5-File-Tail-*:devel/p5-File-Tail \
		:p5-Time-TimeDate-*:devel/p5-Time-TimeDate
RUN_DEPENDS=	${BUILD_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
