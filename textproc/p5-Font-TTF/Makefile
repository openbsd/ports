# $OpenBSD: Makefile,v 1.18 2006/09/29 08:57:13 jasper Exp $

COMMENT=	"perl module for TrueType font hacking"

DISTNAME=	Font-TTF-0.40
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Font/}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

post-patch:
	@rm -f ${WRKSRC}/lib/Font/TTF/*.orig

.include <bsd.port.mk>
