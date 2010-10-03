# $OpenBSD: Makefile,v 1.5 2010/10/03 17:23:41 jasper Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.17
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	sample

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
