# $OpenBSD: Makefile,v 1.3 2001/05/10 19:20:42 naddy Exp $

COMMENT=	"modules to handle various Unicode issues"

DISTNAME=	Unicode-String-2.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
NEED_VERSION=	1.407

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Unicode

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/MIME/Base64.pm::converters/p5-MIME-Base64

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
