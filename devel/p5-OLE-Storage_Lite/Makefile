# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:20 espie Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.19
REVISION=	0
CATEGORIES=	devel perl5
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
