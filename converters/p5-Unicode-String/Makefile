# $OpenBSD: Makefile,v 1.5 2002/03/21 20:46:24 espie Exp $

COMMENT=	"modules to handle various Unicode issues"

DISTNAME=	Unicode-String-2.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
NEED_VERSION=	1.515

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Unicode

BUILD_DEPENDS=	::converters/p5-MIME-Base64

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
