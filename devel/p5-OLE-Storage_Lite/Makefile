COMMENT=	simple class for OLE document interface

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =       OLE-Storage_Lite-0.22
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} +

.include <bsd.port.mk>
