# $OpenBSD: Makefile,v 1.2 2006/11/14 07:53:26 msf Exp $

COMMENT=	"encodes Unicode strings in Punycode"

MODULES=	cpan

DISTNAME=	IDNA-Punycode-0.03
CATEGORIES=	converters perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/R/RO/ROBURBAN/

pre-configure:
	@rm ${WRKSRC}/lib/IDNA/.Punycode.pm.swp

.include <bsd.port.mk>
