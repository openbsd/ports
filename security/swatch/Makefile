# $OpenBSD: Makefile,v 1.13 2002/03/21 21:25:52 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"Simple WATCHdog log filtering program"

DISTNAME=	swatch-3.0.1
CATEGORIES=	security sysutils
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/ \
		ftp://ftp.stanford.edu/general/security-tools/swatch/ \
      		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

HOMEPAGE=	http://www.stanford.edu/~atkins/swatch/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::devel/p5-Date-Calc \
		::devel/p5-File-Tail \
		::devel/p5-Time-TimeDate
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
