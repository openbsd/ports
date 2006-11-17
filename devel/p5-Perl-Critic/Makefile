# $OpenBSD: Makefile,v 1.1.1.1 2006/11/17 02:16:42 msf Exp $

COMMENT=	"sprintf-like string formatting"

MODULES=	cpan

DISTNAME=	Perl-Critic-0.21
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@kisoku.net> 

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Config-Tiny \
		::devel/p5-Module-Pluggable \
		::textproc/p5-PPI \
		::devel/p5-Set-Scalar \
		::devel/p5-String-Format

MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_STYLE= perl modbuild

.include <bsd.port.mk>
