# $OpenBSD: Makefile,v 1.1.1.1 2006/06/11 12:33:33 espie Exp $

COMMENT=	'AJAX framework for perl'
CATEGORIES=	www p5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}
DISTNAME=	CGI-Ajax-0.695
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

.include <bsd.port.mk>
