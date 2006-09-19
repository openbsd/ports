# $OpenBSD: Makefile,v 1.2 2006/09/19 11:44:33 dhill Exp $

COMMENT=	'AJAX framework for perl'
CATEGORIES=	www p5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}
DISTNAME=	CGI-Ajax-0.697
PKGNAME=	p5-${DISTNAME}
PKG_ARCH=	*
HOMEPAGE=	http://www.perljax.us/

# Perl licence, javascript code is MIT like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=	perl
RUN_DEPENDS=	::devel/p5-Class-Accessor

REGRESS_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
