# $OpenBSD: Makefile,v 1.19 2006/04/04 06:46:20 steven Exp $

PKG_ARCH=	*

COMMENT=	"perl module to manage XML RSS files"

DISTNAME=	XML-RSS-1.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-Parser->=2.23:textproc/p5-XML-Parser 
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=:p5-Test-Manifest->=0.9:devel/p5-Test-Manifest

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
