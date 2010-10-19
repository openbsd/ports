# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:54 espie Exp $

COMMENT=	AJAX framework for perl

MODULES=	cpan
DISTNAME=	CGI-Ajax-0.706
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://pjax.sourceforge.net/

# Perl licence, javascript code is MIT-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-CGI-Ajax
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/examples/p5-CGI-Ajax

.include <bsd.port.mk>
