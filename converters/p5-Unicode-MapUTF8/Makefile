# $OpenBSD: Makefile,v 1.6 2006/07/13 07:28:21 steven Exp $

COMMENT=	"conversions to and from arbitrary character sets and UTF8"

DISTNAME=	Unicode-MapUTF8-1.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

RUN_DEPENDS=	::converters/p5-Jcode \
		::converters/p5-Unicode-Map
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=::converters/p5-Unicode-String \
		::converters/p5-Unicode-Map8

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
