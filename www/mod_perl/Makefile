# $OpenBSD: Makefile,v 1.33 2010/10/19 08:02:54 espie Exp $

COMMENT=	module that embeds a Perl interpreter into Apache

DISTNAME=	mod_perl-1.31
PKGNAME=	${DISTNAME}
REVISION=	2
CATEGORIES=	www perl5
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN:=Apache/}

HOMEPAGE=	http://perl.apache.org/

MODULES=	apache-module

MODAPACHE_NAME= perl
MODAPACHE_LOCATION= ${WRKBUILD}/apaci
MODAPACHE_FILE=	${MODAPACHE_LOCATION}/libperl.so

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m perl util 

RUN_DEPENDS=		::www/p5-libwww \
			::www/p5-HTML-Parser
BUILD_DEPENDS=		${RUN_DEPENDS}

SUBST_VARS=	PKGNAME

NO_REGRESS=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS=	USE_APXS="1" EVERYTHING="1" WITH_APXS="/usr/sbin/apxs"
USE_GROFF =	Yes

INSTALL_TARGET=	pure_install doc_install

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_perl
	${INSTALL_DATA} ${WRKSRC}/htdocs/manual/mod/* \
		${PREFIX}/share/doc/mod_perl
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
