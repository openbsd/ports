# $OpenBSD: Makefile,v 1.7 2002/01/19 16:10:44 kevlo Exp $

COMMENT=	"module to map charset names registered with IANA"

DISTNAME=	I18N-Charset-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
NEED_VERSION=	1.504

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= I18N

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Harness

.include <bsd.port.mk>
