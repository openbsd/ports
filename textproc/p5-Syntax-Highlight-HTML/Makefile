# $OpenBSD: Makefile,v 1.2 2006/08/04 04:31:52 steven Exp $

COMMENT=	"syntax highlight for HTML"

DISTNAME=	Syntax-Highlight-HTML-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5 www
PKG_ARCH=	*

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Syntax/}

CONFIGURE_STYLE= perl modbuild
RUN_DEPENDS=	::www/p5-HTML-Parser

REGRESS_DEPENDS=	::www/p5-HTML-Parser


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Syntax-Highlight-HTML
	${INSTALL_DATA} ${WRKDIST}/eg/* ${PREFIX}/share/examples/p5-Syntax-Highlight-HTML

.include <bsd.port.mk>
