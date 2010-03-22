# $OpenBSD: Makefile,v 1.4 2010/03/22 21:20:49 sthen Exp $

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
PKGNAME=	${DISTNAME}p2

CATEGORIES=	mail textproc
HOMEPAGE=	http://www.ecademix.com/JohannesHofmann/nmzmail.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c readline termcap

MASTER_SITES=	${HOMEPAGE:nmzmail.html=}

BUILD_DEPENDS=	::textproc/namazu
RUN_DEPENDS=	::textproc/namazu

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
