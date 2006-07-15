# $OpenBSD: Makefile,v 1.1.1.1 2006/07/15 19:43:12 steven Exp $

COMMENT=	"simple class for OLE document interface"

DISTNAME=       OLE-Storage_Lite-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=OLE/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

post-extract:
	@find ${WRKDIST} -type f -exec perl -pi -e 's/\r$$//' {} \;

.include <bsd.port.mk>
