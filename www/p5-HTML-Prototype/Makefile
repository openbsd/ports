# $OpenBSD: Makefile,v 1.2 2006/05/25 09:46:49 espie Exp $

COMMENT=	'AJAX framework for perl'
CATEGORIES=	www p5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}
DISTNAME=	HTML-Prototype-1.45
PKGNAME=	p5-${DISTNAME}
PKG_ARCH=	*
HOMEPAGE=	http://prototype.conio.net/

# Perl licence, javascript code is MIT like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=	perl modbuild

BUILD_DEPENDS=	::www/p5-HTML-Tree ::devel/p5-Class-Accessor
RUN_DEPENDS=	::www/p5-HTML-Tree ::devel/p5-Class-Accessor

REGRESS_DEPENDS=::devel/p5-Test-Pod
MAKE_ENV+=	TEST_POD=Yes


.include <bsd.port.mk>
