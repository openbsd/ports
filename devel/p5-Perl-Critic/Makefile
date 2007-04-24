# $OpenBSD: Makefile,v 1.3 2007/04/24 01:41:41 msf Exp $

COMMENT=	"sprintf-like string formatting"

MODULES=	cpan
DISTNAME=	Perl-Critic-1.051
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
