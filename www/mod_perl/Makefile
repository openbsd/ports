# $OpenBSD: Makefile,v 1.41 2013/04/20 13:55:48 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache

DISTNAME=	mod_perl-1.32pre20130312
REVISION=	0
CATEGORIES=	www perl5

# svn checkout; upstream is at http://perl.apache.org/dist/
# or ${MASTER_SITE_PERL_CPAN:=Apache/} but is now mostly dead
# for apache 1.x
MASTER_SITES=	http://spacehopper.org/mirrors/

HOMEPAGE=	http://perl.apache.org/

MODULES=	apache-module

MODAPACHE_NAME= perl
MODAPACHE_LOCATION= ${WRKBUILD}/apaci
MODAPACHE_FILE=	${MODAPACHE_LOCATION}/libperl.so

# Apache
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m perl util

RUN_DEPENDS=		devel/p5-Devel-Symdump \
			www/p5-libwww \
			www/p5-HTML-Parser
BUILD_DEPENDS=		${RUN_DEPENDS}

SUBST_VARS=	PKGNAME

NO_TEST=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	USE_APXS="1" EVERYTHING="1" WITH_APXS="/usr/sbin/apxs"

INSTALL_TARGET=	pure_install doc_install

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_perl
	${INSTALL_DATA} ${WRKSRC}/htdocs/manual/mod/* \
		${PREFIX}/share/doc/mod_perl
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
