# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:59 naddy Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.19
REVISION=	0
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
