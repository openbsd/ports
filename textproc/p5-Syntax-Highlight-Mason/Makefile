# $OpenBSD: Makefile,v 1.4 2006/08/04 04:37:08 steven Exp $

COMMENT=	"syntax highlight for Mason"

DISTNAME=	Syntax-Highlight-Mason-1.21
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc perl5 www
PKG_ARCH=	*
EXTRACT_SUFX=	.tgz

# LGPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Syntax/}

CONFIGURE_STYLE= perl
RUN_DEPENDS=	::www/p5-HTML-Mason \
		::www/p5-HTML-Parser \
		::textproc/p5-Syntax-Highlight-Perl \
		::textproc/p5-Syntax-Highlight-HTML
REGRESS_DEPENDS=${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Syntax-Highlight-Mason
	${INSTALL_DATA} ${WRKDIST}/eg/view_source.html ${PREFIX}/share/examples/p5-Syntax-Highlight-Mason

.include <bsd.port.mk>
