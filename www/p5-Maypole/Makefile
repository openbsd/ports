# $OpenBSD: Makefile,v 1.1.1.1 2004/05/26 13:56:43 sturm Exp $

COMMENT=	"Perl MVC for web applications"

DISTNAME=	Maypole-1.4
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-Class-DBI-AbstractSearch \
		::databases/p5-Class-DBI-AsForm \
		::databases/p5-Class-DBI-FromCGI \
		::databases/p5-Class-DBI-Loader \
		::databases/p5-Class-DBI-Loader-Relationship \
		::databases/p5-Class-DBI-Pager \
		::databases/p5-Class-DBI-Plugin-RetrieveAll \
		::databases/p5-Class-DBI-SQLite \
		::devel/p5-Universal-exports \
		::devel/p5-Universal-moniker \
		::textproc/p5-Template \
		::www/p5-libapreq \
		::www/p5-CGI-Untaint \
		::www/p5-URI

# in case other database bindings are ever added, make this MULTI_PACKAGES
RUN_DEPENDS+=	::databases/p5-Class-DBI-mysql

PKG_ARCH=	*

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Maypole
	@${INSTALL_DATA} ${WRKSRC}/ex/BeerDB.pm ${PREFIX}/share/examples/p5-Maypole/BeerDB.pm
	@cp -R ${WRKSRC}/templates ${PREFIX}/share/examples/p5-Maypole

.include <bsd.port.mk>
