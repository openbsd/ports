# $OpenBSD: Makefile,v 1.1.1.1 2003/05/30 14:46:19 lebel Exp $

COMMENT=	"conversions to and from arbitrary character sets and UTF8"

DISTNAME=	Unicode-MapUTF8-1.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

BUILD_DEPENDS=	::converters/p5-Unicode-String
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
