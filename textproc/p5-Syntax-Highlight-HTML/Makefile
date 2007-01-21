# $OpenBSD: Makefile,v 1.3 2007/01/21 21:46:21 simon Exp $

COMMENT=	"syntax highlight for HTML"

MODULES=	cpan
DISTNAME=	Syntax-Highlight-HTML-0.04
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= modbuild
RUN_DEPENDS= ::www/p5-HTML-Parser

MAKE_ENV+=	TEST_POD=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Syntax-Highlight-HTML
	${INSTALL_DATA} ${WRKDIST}/eg/* ${PREFIX}/share/examples/p5-Syntax-Highlight-HTML

.include <bsd.port.mk>
