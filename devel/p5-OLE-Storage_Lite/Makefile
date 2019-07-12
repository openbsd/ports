# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:02 sthen Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=       OLE-Storage_Lite-0.19
REVISION=	0
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
