# $OpenBSD: Makefile,v 1.4 2004/06/26 07:35:06 xsa Exp $

COMMENT=	"conversions to and from arbitrary character sets and UTF8"

DISTNAME=	Unicode-MapUTF8-1.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

RUN_DEPENDS=	::converters/p5-Jcode \
		::converters/p5-Unicode-Map
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
