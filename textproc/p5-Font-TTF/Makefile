# $OpenBSD: Makefile,v 1.17 2006/05/21 14:01:36 steven Exp $

COMMENT=	"perl module for TrueType font hacking"

DISTNAME=	Font-TTF-0.38.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Font/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/Font-TTF-0.38

post-patch:
	@rm -f ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
