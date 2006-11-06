# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 12:24:21 espie Exp $

COMMENT=		"template extension for calling class methods"

DISTNAME=		Template-Plugin-Class-0.13
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

# Same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Template/}

RUN_DEPENDS=		::textproc/p5-Template
REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl modbuild
PKG_ARCH=		*

.include <bsd.port.mk>
