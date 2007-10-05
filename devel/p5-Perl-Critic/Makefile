# $OpenBSD: Makefile,v 1.6 2007/10/05 09:18:35 steven Exp $

COMMENT=	critique perl source code for best practices

MODULES=	cpan
DISTNAME=	Perl-Critic-1.051
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@kisoku.net> 

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-Config-Tiny \
		::devel/p5-File-HomeDir \
		::devel/p5-Module-Pluggable \
		::textproc/p5-PPI \
		::devel/p5-Set-Scalar \
		::devel/p5-String-Format \
		::devel/perltidy

MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
