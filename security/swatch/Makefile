# $OpenBSD: Makefile,v 1.8 2001/05/06 03:46:26 lebel Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"the Simple WATCHdog log filtering program"

DISTNAME=	swatch-3.0.1
CATEGORIES=	security sysutils
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/ \
		ftp://ftp.stanford.edu/general/security-tools/swatch/ 

HOMEPAGE=	http://www.stanford.edu/~atkins/swatch/

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/${ARCH}-openbsd/Date/Calc.pm::devel/p5-Date-Calc \
		${PERL_MODULES}/File/Tail.pm::devel/p5-File-Tail \
		${PERL_MODULES}/Date/Format.pm::devel/p5-Time-TimeDate
RUN_DEPENDS=	${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
