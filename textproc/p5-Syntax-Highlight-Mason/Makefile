# $OpenBSD: Makefile,v 1.7 2010/07/13 20:14:23 sthen Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Mason-1.21
REVISION=	0
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
