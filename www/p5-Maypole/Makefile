# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:56 sthen Exp $

COMMENT=	Perl MVC for web applications

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Maypole-1.4
REVISION=	3
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-Class-DBI-AbstractSearch \
		databases/p5-Class-DBI-AsForm \
		databases/p5-Class-DBI-FromCGI \
		databases/p5-Class-DBI-Loader \
		databases/p5-Class-DBI-Loader-Relationship \
		databases/p5-Class-DBI-Pager \
		databases/p5-Class-DBI-Plugin-RetrieveAll \
		databases/p5-Class-DBI-SQLite \
		devel/p5-Universal-require \
		devel/p5-Universal-moniker \
		textproc/p5-Template \
		www/p5-libapreq2 \
		www/p5-CGI-Untaint \
		www/p5-URI

# in case other database bindings are ever added, make this MULTI_PACKAGES
RUN_DEPENDS+=	databases/p5-Class-DBI-mysql

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Maypole
	@${INSTALL_DATA} ${WRKSRC}/ex/BeerDB.pm ${PREFIX}/share/examples/p5-Maypole/BeerDB.pm
	@cp -R ${WRKSRC}/templates ${PREFIX}/share/examples/p5-Maypole

.include <bsd.port.mk>
