# $OpenBSD: Makefile,v 1.9 2008/11/07 15:08:59 sthen Exp $

COMMENT=	critique perl source code for best practices

MODULES=	cpan
DISTNAME=	Perl-Critic-1.092
PKGNAME=	p5-${DISTNAME}p1
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
		:p5-PPI->=1.203:textproc/p5-PPI \
		::devel/p5-Set-Scalar \
		::devel/p5-String-Format \
		::devel/p5-Readonly \
		::devel/perltidy \
		::sysutils/p5-File-Which

MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Perl-Critic
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-Perl-Critic

.include <bsd.port.mk>
