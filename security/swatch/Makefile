# $OpenBSD: Makefile,v 1.16 2002/07/10 20:48:15 avsm Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"Simple WATCHdog log filtering program"

DISTNAME=	swatch-3.0.1
CATEGORIES=	security sysutils
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/ \
		ftp://ftp.stanford.edu/general/security-tools/swatch/ \
      		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

HOMEPAGE=	http://www.stanford.edu/~atkins/swatch/

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
