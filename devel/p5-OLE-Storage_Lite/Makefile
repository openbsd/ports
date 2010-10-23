# $OpenBSD: Makefile,v 1.7 2010/10/23 09:56:21 jasper Exp $

COMMENT=	simple class for OLE document interface

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.19
CATEGORIES=	devel perl5
USE_GROFF =	Yes

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
