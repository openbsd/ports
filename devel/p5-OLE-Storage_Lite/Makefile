# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=	"simple class for OLE document interface"

MODULES=	cpan
DISTNAME=       OLE-Storage_Lite-0.14
CATEGORIES=	devel perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
