# $OpenBSD: Makefile,v 1.1.1.1 2001/03/21 23:59:21 avsm Exp $

DISTNAME=	XML-RSS-0.96
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.361
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

MAINTAINER=	Shell Hung <i@shellhung.org>

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/${ARCH}-openbsd/XML/Parser.pm::textproc/p5-XML-Parser
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

# Install additional example files
EXAMPLE_LOC=	${PREFIX}/share/examples/p5-XML-RSS
EXAMPLE_PL=	rss2html.pl update_rss.pl convert.pl rss_info.pl \
		create_rss_multiple.pl 1.0/create_rss_1.0.pl \
		1.0/update_rss_1.0.pl 0.91/create_rss_0.91_full.pl \
		0.91/create_rss_0.91.pl 0.9/create_rss.pl
EXAMPLE_DOC=	1.0/rss1.0.rdf 1.0/slash.rdf 0.91/fm.rdf 0.91/rss-0.91.dtd \
		0.91/fm0.91_full.rdf 0.91/fm0.91.rdf 0.91/xmlnews.rdf \
		README 0.9/linuxtoday.rdf 0.9/rss-0.9.dtd 0.9/slashdot.rdf

post-install:
.for i in 1.0 0.91 0.9
	${INSTALL_DATA_DIR} ${EXAMPLE_LOC}/$i
.endfor
.for i in ${EXAMPLE_PL}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/$i ${EXAMPLE_LOC}/$i
.endfor
.for i in ${EXAMPLE_DOC}
	${INSTALL_DATA} ${WRKSRC}/examples/$i ${EXAMPLE_LOC}/$i
.endfor
	
.include <bsd.port.mk>
