# $OpenBSD: Makefile,v 1.7 2008/10/04 18:00:49 jasper Exp $

COMMENT=	critique perl source code for best practices

MODULES=	cpan
DISTNAME=	Perl-Critic-1.092
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@kisoku.net> 

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-Config-Tiny \
		:p5-Exception-Class->=1.23:devel/p5-Exception-Class \
		::devel/p5-File-HomeDir \
		::devel/p5-Module-Pluggable \
		:p5-PPI->=1.203:textproc/p5-PPI \
		::devel/p5-Set-Scalar \
		::devel/p5-String-Format \
		::devel/perltidy \
		::sysutils/p5-File-Which

MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Perl-Critic
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-Perl-Critic

.include <bsd.port.mk>
