# $OpenBSD: Makefile,v 1.5 2007/01/21 21:46:21 simon Exp $

COMMENT=	"syntax highlight for Mason"

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Mason-1.21
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc www
EXTRACT_SUFX=	.tgz

# LGPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::www/p5-HTML-Mason \
		::www/p5-HTML-Parser \
		::textproc/p5-Syntax-Highlight-Perl \
		::textproc/p5-Syntax-Highlight-HTML

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Syntax-Highlight-Mason
	${INSTALL_DATA} ${WRKDIST}/eg/view_source.html ${PREFIX}/share/examples/p5-Syntax-Highlight-Mason

.include <bsd.port.mk>
